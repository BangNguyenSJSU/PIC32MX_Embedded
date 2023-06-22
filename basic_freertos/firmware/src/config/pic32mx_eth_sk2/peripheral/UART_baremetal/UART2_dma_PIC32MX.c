
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include "device.h"
#include "interrupts.h"
#include "UART2_dma_PIC32MX.h"
#include "../dmac/plib_dmac.h"

// DMA 
#define DMA_UART_BUFF_MAX_SIZE  256U
char __attribute__((coherent)) uartDMA_buff[DMA_UART_BUFF_MAX_SIZE];
UART_RX_DMA_CtrlObj uart2_dmaObjCtrl;

// plib_Object (Harmony)
UART_dma_OBJECT uart2Obj;
#define UART_HIGH_SPEED_X4_BAUDRATE   0b1
/*--------------------------- Static function --------------------*/

//void static
//UART2_ErrorClear(void) {
//    UART_ERROR errors = UART_ERROR_NONE;
//    uint8_t dummyData = 0u;
//
//    errors = (UART_ERROR) (U2STA & (_U2STA_OERR_MASK | _U2STA_FERR_MASK | _U2STA_PERR_MASK));
//
//    if (errors != UART_ERROR_NONE) {
//        /* If it's a overrun error then clear it to flush FIFO */
//        if (U2STA & _U2STA_OERR_MASK) {
//            U2STACLR = _U2STA_OERR_MASK;
//        }
//
//        /* Read existing error bytes from FIFO to clear parity and framing error flags */
//        while (U2STA & _U2STA_URXDA_MASK) {
//            dummyData = U2RXREG;
//        }
//
//        /* Clear error interrupt flag */
//        IFS1CLR = _IFS1_U2EIF_MASK;
//
//        /* Clear up the receive interrupt flag so that RX interrupt is not
//         * triggered for error bytes */
//        IFS1CLR = _IFS1_U2RXIF_MASK;
//    }
//
//    // Ignore the warning
//    (void) dummyData;
//}

static unsigned int
calculateU2BRG(unsigned int PBCLK, unsigned int baudRate) {

    if (U2MODEbits.BRGH == UART_HIGH_SPEED_X4_BAUDRATE) {
        return (PBCLK / (4 * baudRate)) - 1;
    } else {
        return (PBCLK / (16 * baudRate)) - 1;
    }

}




void
UART2_forDMA_Initialize(uint32_t baudRate, uint32_t PBCLK) {
    /* Set up UxMODE bits */
    /* STSEL  = 0 */
    /* PDSEL = 0 */
    /* UEN = 0 */
    U2MODEbits.BRGH = UART_HIGH_SPEED_X4_BAUDRATE;

    /* Enable UART2 Receiver and Transmitter */
    U2STASET = (_U2STA_UTXEN_MASK | _U2STA_URXEN_MASK | _U2STA_UTXISEL1_MASK);

    /* BAUD Rate register Setup */
    U2BRG = calculateU2BRG(PBCLK, baudRate);

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

//bool
//UART2_Read (void* buffer, const size_t size)
//{
//  bool status = false;
//  uint8_t* lBuffer = (uint8_t*) buffer;
//
//  if (lBuffer != NULL)
//    {
//      /* Check if receive request is in progress */
//      if (uart2Obj.rxBusyStatus == false)
//        {
//          /* Clear error flags and flush out error data that may have been received when no active request was pending */
//          UART2_ErrorClear ();
//
//          uart2Obj.rxBuffer = lBuffer;
//          uart2Obj.rxSize = size;
//          uart2Obj.rxProcessedSize = 0;
//          uart2Obj.rxBusyStatus = true;
//          uart2Obj.errors = UART_ERROR_NONE;
//
//          status = true;
//
//          /* Enable UART2_FAULT Interrupt */
//          IEC1SET = _IEC1_U2EIE_MASK;
//
//          /* Enable UART2_RX Interrupt */
//          IEC1SET = _IEC1_U2RXIE_MASK;
//        }
//    }
//
//  return status;
//}

//bool
//UART2_Write (void* buffer, const size_t size)
//{
//  bool status = false;
//  uint8_t* lBuffer = (uint8_t*) buffer;
//
//  if (lBuffer != NULL)
//    {
//      /* Check if transmit request is in progress */
//      if (uart2Obj.txBusyStatus == false)
//        {
//          uart2Obj.txBuffer = lBuffer;
//          uart2Obj.txSize = size;
//          uart2Obj.txProcessedSize = 0;
//          uart2Obj.txBusyStatus = true;
//          status = true;
//
//          /* Initiate the transfer by writing as many bytes as we can */
//          while ((!(U2STA & _U2STA_UTXBF_MASK)) && (uart2Obj.txSize > uart2Obj.txProcessedSize))
//            {
//              if ((U2MODE & (_U2MODE_PDSEL0_MASK | _U2MODE_PDSEL1_MASK)) == (_U2MODE_PDSEL0_MASK | _U2MODE_PDSEL1_MASK))
//                {
//                  /* 9-bit mode */
//                  U2TXREG = ((uint16_t*) uart2Obj.txBuffer)[uart2Obj.txProcessedSize++];
//                }
//              else
//                {
//                  /* 8-bit mode */
//                  U2TXREG = uart2Obj.txBuffer[uart2Obj.txProcessedSize++];
//                }
//            }
//
//          IEC1SET = _IEC1_U2TXIE_MASK;
//        }
//    }
//
//  return status;
//}
//
//UART_ERROR
//UART2_ErrorGet (void)
//{
//  UART_ERROR errors = uart2Obj.errors;
//
//  uart2Obj.errors = UART_ERROR_NONE;
//
//  /* All errors are cleared, but send the previous error state */
//  return errors;
//}
//
//void
//UART2_ReadCallbackRegister (UART_CALLBACK callback, uintptr_t context)
//{
//  uart2Obj.rxCallback = callback;
//
//  uart2Obj.rxContext = context;
//}
//
//bool
//UART2_ReadIsBusy (void)
//{
//  return uart2Obj.rxBusyStatus;
//}
//
//size_t
//UART2_ReadCountGet (void)
//{
//  return uart2Obj.rxProcessedSize;
//}
//
//bool
//UART2_ReadAbort (void)
//{
//  if (uart2Obj.rxBusyStatus == true)
//    {
//      /* Disable the fault interrupt */
//      IEC1CLR = _IEC1_U2EIE_MASK;
//
//      /* Disable the receive interrupt */
//      IEC1CLR = _IEC1_U2RXIE_MASK;
//
//      uart2Obj.rxBusyStatus = false;
//
//      /* If required application should read the num bytes processed prior to calling the read abort API */
//      uart2Obj.rxSize = uart2Obj.rxProcessedSize = 0;
//    }
//
//  return true;
//}
//
//void
//UART2_WriteCallbackRegister (UART_CALLBACK callback, uintptr_t context)
//{
//  uart2Obj.txCallback = callback;
//
//  uart2Obj.txContext = context;
//}
//
//bool
//UART2_WriteIsBusy (void)
//{
//  return uart2Obj.txBusyStatus;
//}
//
//size_t
//UART2_WriteCountGet (void)
//{
//  return uart2Obj.txProcessedSize;
//}
//
//static void
//UART2_FAULT_InterruptHandler (void)
//{
//  /* Save the error to be reported later */
//  uart2Obj.errors = (UART_ERROR) (U2STA & (_U2STA_OERR_MASK | _U2STA_FERR_MASK | _U2STA_PERR_MASK));
//
//  /* Disable the fault interrupt */
//  IEC1CLR = _IEC1_U2EIE_MASK;
//
//  /* Disable the receive interrupt */
//  IEC1CLR = _IEC1_U2RXIE_MASK;
//
//  /* Clear rx status */
//  uart2Obj.rxBusyStatus = false;
//
//  UART2_ErrorClear ();
//
//  /* Client must call UARTx_ErrorGet() function to get the errors */
//  if (uart2Obj.rxCallback != NULL)
//    {
//      uart2Obj.rxCallback (uart2Obj.rxContext);
//    }
//}
//
//static void
//UART2_RX_InterruptHandler (void)
//{
//  if (uart2Obj.rxBusyStatus == true)
//    {
//      while ((_U2STA_URXDA_MASK == (U2STA & _U2STA_URXDA_MASK)) && (uart2Obj.rxSize > uart2Obj.rxProcessedSize))
//        {
//          if ((U2MODE & (_U2MODE_PDSEL0_MASK | _U2MODE_PDSEL1_MASK)) == (_U2MODE_PDSEL0_MASK | _U2MODE_PDSEL1_MASK))
//            {
//              /* 9-bit mode */
//              ((uint16_t*) uart2Obj.rxBuffer)[uart2Obj.rxProcessedSize++] = (uint16_t)(U2RXREG);
//            }
//          else
//            {
//              /* 8-bit mode */
//              uart2Obj.rxBuffer[uart2Obj.rxProcessedSize++] = (uint8_t)(U2RXREG);
//            }
//        }
//
//      /* Clear UART2 RX Interrupt flag */
//      IFS1CLR = _IFS1_U2RXIF_MASK;
//
//      /* Check if the buffer is done */
//      if (uart2Obj.rxProcessedSize >= uart2Obj.rxSize)
//        {
//          uart2Obj.rxBusyStatus = false;
//
//          /* Disable the fault interrupt */
//          IEC1CLR = _IEC1_U2EIE_MASK;
//
//          /* Disable the receive interrupt */
//          IEC1CLR = _IEC1_U2RXIE_MASK;
//
//
//          if (uart2Obj.rxCallback != NULL)
//            {
//              uart2Obj.rxCallback (uart2Obj.rxContext);
//            }
//        }
//    }
//  else
//    {
//      // Nothing to process
//      ;
//    }
//}
//
//static void
//UART2_TX_InterruptHandler (void)
//{
//  if (uart2Obj.txBusyStatus == true)
//    {
//      while ((!(U2STA & _U2STA_UTXBF_MASK)) && (uart2Obj.txSize > uart2Obj.txProcessedSize))
//        {
//          if ((U2MODE & (_U2MODE_PDSEL0_MASK | _U2MODE_PDSEL1_MASK)) == (_U2MODE_PDSEL0_MASK | _U2MODE_PDSEL1_MASK))
//            {
//              /* 9-bit mode */
//              U2TXREG = ((uint16_t*) uart2Obj.txBuffer)[uart2Obj.txProcessedSize++];
//            }
//          else
//            {
//              /* 8-bit mode */
//              U2TXREG = uart2Obj.txBuffer[uart2Obj.txProcessedSize++];
//            }
//        }
//
//      /* Clear UART2TX Interrupt flag */
//      IFS1CLR = _IFS1_U2TXIF_MASK;
//
//      /* Check if the buffer is done */
//      if (uart2Obj.txProcessedSize >= uart2Obj.txSize)
//        {
//          uart2Obj.txBusyStatus = false;
//
//          /* Disable the transmit interrupt, to avoid calling ISR continuously */
//          IEC1CLR = _IEC1_U2TXIE_MASK;
//
//          if (uart2Obj.txCallback != NULL)
//            {
//              uart2Obj.txCallback (uart2Obj.txContext);
//            }
//        }
//    }
//  else
//    {
//      // Nothing to process
//      ;
//    }
//}

//void
//UART_2_InterruptHandler (void)
//{
//  /* Call Error handler if Error interrupt flag is set */
//  if ((IFS1 & _IFS1_U2EIF_MASK) && (IEC1 & _IEC1_U2EIE_MASK))
//    {
//      UART2_FAULT_InterruptHandler ();
//    }
//  /* Call RX handler if RX interrupt flag is set */
//  if ((IFS1 & _IFS1_U2RXIF_MASK) && (IEC1 & _IEC1_U2RXIE_MASK))
//    {
//      UART2_RX_InterruptHandler ();
//    }
//  /* Call TX handler if TX interrupt flag is set */
//  if ((IFS1 & _IFS1_U2TXIF_MASK) && (IEC1 & _IEC1_U2TXIE_MASK))
//    {
//      UART2_TX_InterruptHandler ();
//    }
//}

//bool
//UART2_TransmitComplete (void)
//{
//  bool transmitComplete = false;
//
//  if ((U2STA & _U2STA_TRMT_MASK))
//    {
//      transmitComplete = true;
//    }
//
//  return transmitComplete;
//}

void
UART2_DMA_RX_Initialize(void) {

    memset(uart2_dmaObjCtrl.data, 0, BUFFER_DMA_SIZE);
    uart2_dmaObjCtrl.buff_head_Index = 0; //(DCH0DPTR & 0xFFFF);
    uart2_dmaObjCtrl.buff_capacity = 0;
    uart2_dmaObjCtrl.IsDONE = false;
    uart2_dmaObjCtrl.writeDataLen = 0;
    uart2_dmaObjCtrl.expectedTotalRxLen = 0;
    DMAC_ChannelTransfer(DMAC_CHANNEL_0, (const void *) &U2RXREG, 1, &uart2_dmaObjCtrl.data, DMA_UART_BUFF_MAX_SIZE, 1);

}

UART_RX_DMA_CtrlObj*
UART2_Get_CtrlObjectPtr(void) {
    return &uart2_dmaObjCtrl;
}

void
UART2_DMA_RX_Reset(void) {
    if (uart2_dmaObjCtrl.IsDONE) {
        //GPIO_ToggleState (PORT_A, PIN_6);
        if (DCH0ECONbits.CABORT) {
            memset(uart2_dmaObjCtrl.data,0, BUFFER_DMA_SIZE);
        }
        DCH0CONbits.CHEN = 1;
        DCH0ECONbits.CABORT = 0;
        uart2_dmaObjCtrl.IsDONE = 0;
    }


}

size_t
UART2_DMA_RX_GetBuffCapacityCounter(void) {
    uart2_dmaObjCtrl.buff_capacity = DCH0DPTR & 0xFFFF;
    return uart2_dmaObjCtrl.buff_capacity;
}

size_t UART2_DMA_RX_GetBuffIndexCounter(void) {
    uint16_t counter = DCH0DPTR & 0xFFFF;
    if (counter != 0) {
        uart2_dmaObjCtrl.buff_head_Index = counter - 1;
    } else {
        uart2_dmaObjCtrl.buff_head_Index = 0;
    }
    return uart2_dmaObjCtrl.buff_head_Index;
}

bool
UART2_DMA_RX_IsReadRequest(void) {
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
UART2_DMA_RX_IsWriteRequest(void) {
  
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
UART2_DMA_RX_WriteDataLen(void) {
    // uint16_t regCount = ((uart2RX_objCtrl.data[4] << 8) | uart2RX_objCtrl.data[5]);
    if (uart2_dmaObjCtrl.data[BUFFER_INDX_FUNC_CODE] == 0x03) {
        uart2_dmaObjCtrl.expectedTotalRxLen = 8;
        return uart2_dmaObjCtrl.expectedTotalRxLen;
    } else if (uart2_dmaObjCtrl.data[BUFFER_INDX_FUNC_CODE] == 0x10) {
        uart2_dmaObjCtrl.writeDataLen = uart2_dmaObjCtrl.data[BUFFER_INDEX_WRITTEN_BYTE_COUNT];
        uart2_dmaObjCtrl.expectedTotalRxLen = 9 + uart2_dmaObjCtrl.writeDataLen;
        return uart2_dmaObjCtrl.expectedTotalRxLen;
    } else {
        uart2_dmaObjCtrl.expectedTotalRxLen = 0;
        return uart2_dmaObjCtrl.expectedTotalRxLen;
    }
}

bool
UART2_DMA_RX_isDONE(void) {
    UART2_DMA_RX_GetBuffCapacityCounter();
    UART2_DMA_RX_GetBuffIndexCounter();
    if (uart2_dmaObjCtrl.buff_capacity > 6) {
        UART2_DMA_RX_WriteDataLen();
        uart2_dmaObjCtrl.IsDONE = (uart2_dmaObjCtrl.expectedTotalRxLen == uart2_dmaObjCtrl.buff_capacity); // Original 

        return uart2_dmaObjCtrl.IsDONE;
    } else {
        uart2_dmaObjCtrl.IsDONE = false;
        return uart2_dmaObjCtrl.IsDONE;
    }
}

void
UART_2_DMA_RX_2_InterruptHandler(void) {
  
//  LATAINV = (1UL<<6);
//  TRISACLR = (1UL << 6);
    if (DCH0INTbits.CHSDIF == true) {
        if (UART2_DMA_RX_isDONE()) {
            //GPIO_ToggleState (PORT_A, PIN_6);
            DCH0ECONbits.CABORT = 1;
        }
        /* Clear the address error flag */
        DCH0INTCLR = _DCH0INT_CHSHIF_MASK;
        DCH0INTCLR = _DCH0INT_CHSDIF_MASK;
        /* Clear the interrupt flag and call event handler */
        IFS1CLR = 0x10000;
    }
}