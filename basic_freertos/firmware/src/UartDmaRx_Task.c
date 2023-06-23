#include <stdint.h>
#include "UartDmaRx_Task.h"
#include "definitions.h"


/* Handle for the UART_DMA_RX_Task */
TaskHandle_t xUART_DMA_RX_TaskObject; // extern Declare in "sys_tasksObject.h"
#define READ_REG_FUNCODE 0x03
#define WRITE_REG_FUNCODE 0x10
#define REG_DATA_SIZE 2U

#define SLAVE_INDX    0u
#define FUNCODE_INDX  1u
#define REG_ADD_H     2u
#define REG_ADD_L     3u
#define REG_CNT_H     4u  
#define REG_CNT_L     5u
#define WR_CRC_L      6u
#define WR_CRC_H      7u  

#define RD_RESPOND_BYTE_CNT 2u
#define RD_RESPOND_DATA_INDX_H   3u
#define RD_RESPOND_DATA_INDX_L   4u

void
UART_DMA_RX_Task_Initialize (void)
{
  UART2_DMA_RX_Initialize ();
}

void
UART_DMA_RX_Task_Running (void)
{
  /* TaskObjectHandler */
  xUART_DMA_RX_TaskObject = xTaskGetCurrentTaskHandle ();
  uint32_t ulNotifiedValue;

  /**/
  UART_RX_DMA_CtrlObj* UART2_RX_Object = UART2_Get_CtrlObjectPtr ();
  unsigned char responseBuffer[256];
  /* --- */
  while (true)
    {
      /* Wait to be notified by the ISR. */
      if (xTaskNotifyWait (0, 0, &ulNotifiedValue, portMAX_DELAY) == pdTRUE)
        {
          LED1_Toggle ();

          /* CS verify */
          size_t buffSize = UART2_RX_Object->expectedTotalRxLen;

          
          //          uint8_t slaveAddress = UART2_RX_Object->data[0];
          //          uint8_t funcCode = UART2_RX_Object->data[1];
          //          uint16_t regAddress = ((UART2_RX_Object->data[2] << 8) | UART2_RX_Object->data[3]);
                      uint16_t RegCountFromRequest = ((UART2_RX_Object->data[REG_CNT_H] << 8) | UART2_RX_Object->data[REG_CNT_L]);
          //          uint16_t receivedCS = ((UART2_RX_Object->data[buffSize - 1] << 8) | UART2_RX_Object->data[buffSize - 2]);
          //          uint16_t calculatedCS = Modbus_CRC16 (UART2_RX_Object->data, (buffSize - 2));    

          responseBuffer[SLAVE_INDX] = UART2_RX_Object->data[SLAVE_INDX]; // SlaveAddress
          responseBuffer[FUNCODE_INDX] = UART2_RX_Object->data[FUNCODE_INDX]; // FunCode
            

          /* Handle The reply */
          switch (UART2_RX_Object->data[FUNCODE_INDX])
            {
            case WRITE_REG_FUNCODE:
              responseBuffer[REG_ADD_H] = UART2_RX_Object->data[REG_ADD_H]; // Starting Address High
              responseBuffer[REG_ADD_L] = UART2_RX_Object->data[REG_ADD_L]; // Starting Address Low
              responseBuffer[REG_CNT_H] = UART2_RX_Object->data[REG_CNT_H]; // Quantity of Registers High
              responseBuffer[REG_CNT_L] = UART2_RX_Object->data[REG_CNT_L]; // Quantity of Registers Low
              uint16_t respondCS = Modbus_CRC16 (responseBuffer, 6);  
              responseBuffer[WR_CRC_L] = respondCS & 0xFF;
              responseBuffer[WR_CRC_H] = (respondCS >> 8) & 0xFF;
              // vTaskDelay (151 / portTICK_PERIOD_MS);
              UART2_Write (responseBuffer, 8);
              UART2_DMA_RX_Reset ();
              break;
            case READ_REG_FUNCODE:
             
              responseBuffer[RD_RESPOND_BYTE_CNT] = 2 * RegCountFromRequest; 
              uint16_t registerVal = 0x0004;
              for (size_t RegIndx = 0; RegIndx <= RegCountFromRequest; RegIndx++)
                {

                  if (RegIndx == RegCountFromRequest)
                    {
                      uint16_t respondReadCS = Modbus_CRC16 (responseBuffer, responseBuffer[RD_RESPOND_BYTE_CNT] + 3);
                      responseBuffer[RD_RESPOND_DATA_INDX_H +(RegIndx * REG_DATA_SIZE)] = respondReadCS & 0xFF;
                      responseBuffer[RD_RESPOND_DATA_INDX_L +(RegIndx * REG_DATA_SIZE)] = (respondReadCS >> 8) & 0xFF;
                      UART2_Write (responseBuffer, 5 + responseBuffer[RD_RESPOND_BYTE_CNT]);
                      UART2_DMA_RX_Reset ();
                    }
                  else
                    {
                      responseBuffer[RD_RESPOND_DATA_INDX_H + (RegIndx * REG_DATA_SIZE)] = (registerVal >> 8) & 0xFF; // High byte reg val
                      responseBuffer[RD_RESPOND_DATA_INDX_L + (RegIndx * REG_DATA_SIZE)] = registerVal & 0xFF; // Low byte reg_val
                    }
                }


              break;
            default:
              break;
            }
        }


    }

}
