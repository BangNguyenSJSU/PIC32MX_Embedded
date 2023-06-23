#include <stdint.h>
#include "UartDmaRx_Task.h"
#include "definitions.h"


/* Handle for the UART_DMA_RX_Task */
TaskHandle_t xUART_DMA_RX_TaskObject; // extern Declare in "sys_tasksObject.h"
/* Handle Parsing Modbus RTU Message sent from Master */

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

#define RD_RESPOND_BYTE_CNT_INDX 2u
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

  /* Handle DMA Uart Rev */
  UART_RX_DMA_CtrlObj* UART2_RX_Object = UART2_Get_CtrlObjectPtr ();
  unsigned char responseBuffer[256];

  /* Handle Parsing Message */
  ModbusMessage_t MessRXObj;

  /* --- */
  while (true)
    {
      /* Wait to be notified by the ISR. */
      //if (xTaskNotifyWait(0, 0, &ulNotifiedValue, portMAX_DELAY) == pdTRUE)
      if (ulTaskNotifyTake(pdTRUE, portMAX_DELAY))
        {
          //LED1_Toggle ();

          /* CS verify */
          size_t buffSize = UART2_RX_Object->expectedTotalRxLen;
          MessRXObj.MB_CRC16_Received = ((UART2_RX_Object->data[buffSize - 1] << 8) | UART2_RX_Object->data[buffSize - 2]);
          uint16_t CRC_Computed = Modbus_CRC16 (UART2_RX_Object->data, (buffSize - 2));
          if (MessRXObj.MB_CRC16_Received != CRC_Computed)
            {
              /* CheckSum did not Match*/
            }
          else
            {
              MessRXObj.MB_SlaveAdd = UART2_RX_Object->data[SLAVE_INDX];
              MessRXObj.MB_FunCode = UART2_RX_Object->data[FUNCODE_INDX];
              MessRXObj.MB_RegAdd = ((UART2_RX_Object->data[REG_ADD_H] << 8) | UART2_RX_Object->data[REG_ADD_L]);
              MessRXObj.MB_RegCnt = ((UART2_RX_Object->data[REG_CNT_H] << 8) | UART2_RX_Object->data[REG_CNT_L]);

              /* respond */
              responseBuffer[SLAVE_INDX] = UART2_RX_Object->data[SLAVE_INDX]; // SlaveAddress
              responseBuffer[FUNCODE_INDX] = UART2_RX_Object->data[FUNCODE_INDX]; // FunCode
              /* Handle The reply */
              switch (UART2_RX_Object->data[FUNCODE_INDX])
                {
                case WRITE_REG_FUNCODE:
                  /* Update RX Message Object */
                  MessRXObj.MB_ByteCnt = MessRXObj.MB_RegCnt * 2;
                  /*Reply*/
                  responseBuffer[REG_ADD_H] = UART2_RX_Object->data[REG_ADD_H]; // Starting Address High
                  responseBuffer[REG_ADD_L] = UART2_RX_Object->data[REG_ADD_L]; // Starting Address Low
                  responseBuffer[REG_CNT_H] = UART2_RX_Object->data[REG_CNT_H]; // Quantity of Registers High
                  responseBuffer[REG_CNT_L] = UART2_RX_Object->data[REG_CNT_L]; // Quantity of Registers Low              
                  uint16_t WR_RespondCS = Modbus_CRC16 (responseBuffer, 6);  
                  responseBuffer[WR_CRC_L] = WR_RespondCS & 0xFF;
                  responseBuffer[WR_CRC_H] = (WR_RespondCS >> 8) & 0xFF;
                  UART2_Write (responseBuffer, 8);
                  UART2_DMA_RX_Reset ();
                  break;
                case READ_REG_FUNCODE:
                  /* Update RX Message Object */
                  MessRXObj.MB_ByteCnt =  2 * MessRXObj.MB_RegCnt;
                  responseBuffer[RD_RESPOND_BYTE_CNT_INDX] = 2 * MessRXObj.MB_RegCnt;
                  uint16_t registerVal = 0x0004;
                  for (size_t RegIndx = 0; RegIndx <= MessRXObj.MB_RegCnt; RegIndx++)
                    {

                      if (RegIndx == MessRXObj.MB_RegCnt)
                        {
                          /* CS 2-Byte */
                          uint16_t RD_RespondCS = Modbus_CRC16 (responseBuffer, responseBuffer[RD_RESPOND_BYTE_CNT_INDX] + 3);
                          responseBuffer[RD_RESPOND_DATA_INDX_H + (RegIndx * REG_DATA_SIZE)] = RD_RespondCS & 0xFF;
                          responseBuffer[RD_RESPOND_DATA_INDX_L + (RegIndx * REG_DATA_SIZE)] = (RD_RespondCS >> 8) & 0xFF;
                          UART2_Write (responseBuffer, 5 + responseBuffer[RD_RESPOND_BYTE_CNT_INDX]);
                          UART2_DMA_RX_Reset ();
                        }
                      else
                        {
                          /* Packet */
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
  vTaskDelay (5 / portTICK_PERIOD_MS);

    }

}
