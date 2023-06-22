
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include "../src/config/pic32mx_eth_sk2/definitions.h" // Can detect RTOS API
#include "../src/config/pic32mx_eth_sk2/sys_tasksObject.h"// Can detect Task Object
#include "device.h"
#include "interrupts.h"
#include "UART2_dma_PIC32MX.h"
#include "../dmac/plib_dmac.h"

// DMA 
#define DMA_UART_BUFF_MAX_SIZE  256U
char __attribute__ ((coherent)) uartDMA_buff[DMA_UART_BUFF_MAX_SIZE];
UART_RX_DMA_CtrlObj uart2_dmaObjCtrl;

// plib_Object (Harmony)
UART_dma_OBJECT uart2Obj;
#define UART_HIGH_SPEED_X4_BAUDRATE   0b1
/*--------------------------- Static function --------------------*/


static unsigned int
calculateU2BRG (unsigned int PBCLK, unsigned int baudRate)
{

  if (U2MODEbits.BRGH == UART_HIGH_SPEED_X4_BAUDRATE)
    {
      return (PBCLK / (4 * baudRate)) - 1;
    }
  else
    {
      return (PBCLK / (16 * baudRate)) - 1;
    }

}

void
UART2_forDMA_Initialize (uint32_t baudRate, uint32_t PBCLK)
{
  /* Set up UxMODE bits */
  /* STSEL  = 0 */
  /* PDSEL = 0 */
  /* UEN = 0 */
  U2MODEbits.BRGH = UART_HIGH_SPEED_X4_BAUDRATE;

  /* Enable UART2 Receiver and Transmitter */
  U2STASET = (_U2STA_UTXEN_MASK | _U2STA_URXEN_MASK | _U2STA_UTXISEL1_MASK);

  /* BAUD Rate register Setup */
  U2BRG = calculateU2BRG (PBCLK, baudRate);

  /* Disable Interrupts */
  IEC1CLR = _IEC1_U2EIE_MASK;

  IEC1CLR = _IEC1_U2RXIE_MASK;

  IEC1CLR = _IEC1_U2TXIE_MASK;

  /* Initialize instance object */
  uart2Obj.rxBuffer = NULL;
  uart2Obj.rxSize = 0;
  uart2Obj.rxProcessedSize = 0;
  uart2Obj.rxBusyStatus = false;
  uart2Obj.rxCallback = NULL;
  uart2Obj.txBuffer = NULL;
  uart2Obj.txSize = 0;
  uart2Obj.txProcessedSize = 0;
  uart2Obj.txBusyStatus = false;
  uart2Obj.txCallback = NULL;
  uart2Obj.errors = UART_ERROR_NONE;

  /* Turn ON UART2 */
  U2MODESET = _U2MODE_ON_MASK;
}

void
UART2_DMA_RX_Initialize (void)
{

  memset (uart2_dmaObjCtrl.data, 0, BUFFER_DMA_SIZE);
  uart2_dmaObjCtrl.buff_head_Index = 0; //(DCH0DPTR & 0xFFFF);
  uart2_dmaObjCtrl.buff_capacity = 0;
  uart2_dmaObjCtrl.IsDONE = false;
  uart2_dmaObjCtrl.writeDataLen = 0;
  uart2_dmaObjCtrl.expectedTotalRxLen = 0;
  DMAC_ChannelTransfer (DMAC_CHANNEL_0, (const void *) &U2RXREG, 1, &uart2_dmaObjCtrl.data, DMA_UART_BUFF_MAX_SIZE, 1);

}

UART_RX_DMA_CtrlObj*
UART2_Get_CtrlObjectPtr (void)
{
  return &uart2_dmaObjCtrl;
}

void
UART2_DMA_RX_Reset (void)
{
  if (uart2_dmaObjCtrl.IsDONE)
    {
      //GPIO_ToggleState (PORT_A, PIN_6);
      if (DCH0ECONbits.CABORT)
        {
          memset (uart2_dmaObjCtrl.data, 0, BUFFER_DMA_SIZE);
        }
      DCH0CONbits.CHEN = 1;
      DCH0ECONbits.CABORT = 0;
      uart2_dmaObjCtrl.IsDONE = 0;
    }


}

size_t
UART2_DMA_RX_GetBuffCapacityCounter (void)
{
  uart2_dmaObjCtrl.buff_capacity = DCH0DPTR & 0xFFFF;
  return uart2_dmaObjCtrl.buff_capacity;
}

size_t
UART2_DMA_RX_GetBuffIndexCounter (void)
{
  uint16_t counter = DCH0DPTR & 0xFFFF;
  if (counter != 0)
    {
      uart2_dmaObjCtrl.buff_head_Index = counter - 1;
    }
  else
    {
      uart2_dmaObjCtrl.buff_head_Index = 0;
    }
  return uart2_dmaObjCtrl.buff_head_Index;
}

bool
UART2_DMA_RX_IsReadRequest (void)
{
  if (uart2_dmaObjCtrl.buff_capacity < 3)
    {
      return false;
    }
  else
    {
      return (uart2_dmaObjCtrl.data[BUFFER_INDX_FUNC_CODE] == 0x03);
    }
}

bool
UART2_DMA_RX_IsWriteRequest (void)
{

  if (uart2_dmaObjCtrl.buff_capacity < 3)
    {
      return false;
    }
  else
    {
      return (uart2_dmaObjCtrl.data[BUFFER_INDX_FUNC_CODE] == 0x10);
    }
}

size_t
UART2_DMA_RX_WriteDataLen (void)
{
  // uint16_t regCount = ((uart2RX_objCtrl.data[4] << 8) | uart2RX_objCtrl.data[5]);
  if (uart2_dmaObjCtrl.data[BUFFER_INDX_FUNC_CODE] == 0x03)
    {
      uart2_dmaObjCtrl.expectedTotalRxLen = 8;
      return uart2_dmaObjCtrl.expectedTotalRxLen;
    }
  else if (uart2_dmaObjCtrl.data[BUFFER_INDX_FUNC_CODE] == 0x10)
    {
      uart2_dmaObjCtrl.writeDataLen = uart2_dmaObjCtrl.data[BUFFER_INDEX_WRITTEN_BYTE_COUNT];
      uart2_dmaObjCtrl.expectedTotalRxLen = 9 + uart2_dmaObjCtrl.writeDataLen;
      return uart2_dmaObjCtrl.expectedTotalRxLen;
    }
  else
    {
      uart2_dmaObjCtrl.expectedTotalRxLen = 0;
      return uart2_dmaObjCtrl.expectedTotalRxLen;
    }
}

bool
UART2_DMA_RX_isDONE (void)
{
  UART2_DMA_RX_GetBuffCapacityCounter ();
  UART2_DMA_RX_GetBuffIndexCounter ();
  if (uart2_dmaObjCtrl.buff_capacity > 6)
    {
      UART2_DMA_RX_WriteDataLen ();
      uart2_dmaObjCtrl.IsDONE = (uart2_dmaObjCtrl.expectedTotalRxLen == uart2_dmaObjCtrl.buff_capacity); // Original 

      return uart2_dmaObjCtrl.IsDONE;
    }
  else
    {
      uart2_dmaObjCtrl.IsDONE = false;
      return uart2_dmaObjCtrl.IsDONE;
    }
}

void
UART_2_DMA_RX_2_InterruptHandler (void)
{

  //  LATAINV = (1UL<<6); // Debug Purpose
  //  TRISACLR = (1UL << 6); // Debug Purpose

  BaseType_t xHigherPriorityTaskWoken = pdFALSE;

  if (DCH0INTbits.CHSDIF == true)
    {
      
       /* Clear the address error flag */
      DCH0INTCLR = _DCH0INT_CHSHIF_MASK;
      DCH0INTCLR = _DCH0INT_CHSDIF_MASK;
      /* Clear the interrupt flag and call event handler */
      IFS1CLR = 0x10000;
      
      if (UART2_DMA_RX_isDONE ())
        {
          //GPIO_ToggleState (PORT_A, PIN_6);
          DCH0ECONbits.CABORT = 1;

          /* We have not woken a task at the start of the ISR. */
          xHigherPriorityTaskWoken = pdFALSE;

          /* Clear the RX interrupt Flag */
          IFS0CLR = _IFS0_U1RXIF_MASK;

          /* A new data has been received, notify the receiving task */
          vTaskNotifyGiveFromISR (xUART_DMA_RX_Tasks, &xHigherPriorityTaskWoken);

          /* Now the buffer is empty we can switch context if necessary. */
          portEND_SWITCHING_ISR (xHigherPriorityTaskWoken);
        }    
 
    }
}