#include "UartDmaRx_Task.h"
#include "definitions.h"


// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************


// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************

void
UART_DMA_RX_Task_Initialize (void)
{
  UART2_DMA_RX_Initialize ();
}


/* Handle for the UART_DMA_RX_Task */
TaskHandle_t xUART_DMA_RX_Tasks; // extern Declare in "sys_tasksObject.h"
#define READ_REG 0x03
#define WRITE_REG 0x10
void
UART_DMA_RX_Task_Running (void)
{
  uint32_t ulNotifiedValue;
  xUART_DMA_RX_Tasks = xTaskGetCurrentTaskHandle ();
  UART_RX_DMA_CtrlObj* UART2_RX_Object = UART2_Get_CtrlObjectPtr ();
  char responseBuffer[256];
  /* --- */
  while (true)
    {
      /* Wait to be notified by the ISR. */
      if (xTaskNotifyWait (0, 0, &ulNotifiedValue, portMAX_DELAY) == pdTRUE)
        {
          LED1_Toggle ();
          
          /* CS verify */
          size_t buffSize = UART2_RX_Object->expectedTotalRxLen;
          uint8_t slaveAddress = UART2_RX_Object->data[0];
          uint8_t funcCode = UART2_RX_Object->data[1];
          uint16_t regAddress = ((UART2_RX_Object->data[2] << 8) | UART2_RX_Object->data[3]);
          uint16_t regCount = ((UART2_RX_Object->data[4] << 8) | UART2_RX_Object->data[5]);
          uint16_t receivedCS = ((UART2_RX_Object->data[buffSize - 1] << 8) | UART2_RX_Object->data[buffSize - 2]);
          uint16_t calculatedCS = Modbus_CRC16 (UART2_RX_Object->data, (buffSize - 2));      
        
           /* Handle The reply */
          switch (funcCode)
            {
            case WRITE_REG :
              responseBuffer[0] = slaveAddress;
              responseBuffer[1] = funcCode;
              responseBuffer[2] = UART2_RX_Object->data[2]; // Starting Address High
              responseBuffer[3] = UART2_RX_Object->data[3]; // Starting Address Low
              responseBuffer[4] = UART2_RX_Object->data[4]; // Quantity of Registers High
              responseBuffer[5] = UART2_RX_Object->data[5]; // Quantity of Registers Low
              uint16_t respondCS = Modbus_CRC16 (responseBuffer, 6);
              responseBuffer[6] = respondCS & 0xFF;
              responseBuffer[7] = (respondCS >> 8) & 0xFF;
              UART2_Write (responseBuffer, 8);
              UART2_DMA_RX_Reset ();
              break;
            case READ_REG:
              responseBuffer[0] = slaveAddress;
              responseBuffer[1] = funcCode;
              responseBuffer[2] = 2; // Byte count
              responseBuffer[3] = 0xFE; // reg_val
              responseBuffer[4] = 0xFF; // reg_val
              uint16_t respondReadCS = Modbus_CRC16 (responseBuffer, 5);
              responseBuffer[5] = respondReadCS & 0xFF;
              responseBuffer[6] = (respondReadCS >> 8) & 0xFF;
              UART2_Write (responseBuffer, 7);
              UART2_DMA_RX_Reset ();
              break;
            default:
              break;
            }
        }
      

    }

}
