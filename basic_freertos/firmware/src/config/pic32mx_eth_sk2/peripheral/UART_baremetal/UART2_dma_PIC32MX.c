
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include "../src/config/pic32mx_eth_sk2/definitions.h" // Can detect RTOS API
#include "../src/config/pic32mx_eth_sk2/sys_tasksObject.h"// Can detect Task Object
#include "device.h"
#include "interrupts.h"
#include "UART2_dma_PIC32MX.h"
#include "../dmac/plib_dmac.h"

// MODBUS
#define MODBUS_CS_SIZE 2U
#define MODBUS_RD_HEADER_SIZE 6U
#define MODBUS_WR_HEADER_SIZE 6U
#define MODBUS_BYTE_COUNT_SIZE 1U

#define MODBUS_FUNC_WR 0x10
#define MODBUS_FUNC_RD 0x03

// DMA 
#define DMA_UART_BUFF_MAX_SIZE  256U
char __attribute__ ((coherent)) uartDMA_buff[DMA_UART_BUFF_MAX_SIZE];
UART_RX_DMA_CtrlObj uart2_dmaObjCtrl;


/*--------------------------- Static function --------------------*/
#define UART_HIGH_SPEED_X4_BAUDRATE   0b1

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

  /* Turn ON UART2 */
  U2MODESET = _U2MODE_ON_MASK;
}

void
UART2_DMA_RX_Initialize (void)
{

  memset (uart2_dmaObjCtrl.data, 0, BUFF_DMA_SIZE);
  uart2_dmaObjCtrl.buff_head_Index = 0; 
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
      if (DCH0ECONbits.CABORT)
        {
          memset (uart2_dmaObjCtrl.data, 0, BUFF_DMA_SIZE);
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

size_t
UART2_DMA_RX_WriteDataLen (void)
{
  if (uart2_dmaObjCtrl.data[BUFF_INDX_FUNC_CODE] == MODBUS_FUNC_RD)
    {
      uart2_dmaObjCtrl.expectedTotalRxLen = MODBUS_RD_HEADER_SIZE + MODBUS_CS_SIZE;
      return uart2_dmaObjCtrl.expectedTotalRxLen;
    }
  else if (uart2_dmaObjCtrl.data[BUFF_INDX_FUNC_CODE] == MODBUS_FUNC_WR)
    {
      uart2_dmaObjCtrl.writeDataLen = uart2_dmaObjCtrl.data[BUFF_INDX_BYTE_COUNT];
      uart2_dmaObjCtrl.expectedTotalRxLen = MODBUS_RD_HEADER_SIZE + MODBUS_BYTE_COUNT_SIZE + uart2_dmaObjCtrl.writeDataLen + MODBUS_CS_SIZE;
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
  if (uart2_dmaObjCtrl.buff_capacity >= (MODBUS_RD_HEADER_SIZE + MODBUS_BYTE_COUNT_SIZE))
    {
      UART2_DMA_RX_WriteDataLen ();
      uart2_dmaObjCtrl.IsDONE = (uart2_dmaObjCtrl.expectedTotalRxLen == uart2_dmaObjCtrl.buff_capacity); // Original 
      return uart2_dmaObjCtrl.IsDONE; // Original 
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

          /* A new data has been received, notify the receiving task */
          vTaskNotifyGiveFromISR (xUART_DMA_RX_TaskObject, &xHigherPriorityTaskWoken);

          /* Now the buffer is empty we can switch context if necessary. */
          portEND_SWITCHING_ISR (xHigherPriorityTaskWoken);
        }
      // TO DO: Adding Error Handling with we reach the the max size and wont be able to detect last byte

    }
}