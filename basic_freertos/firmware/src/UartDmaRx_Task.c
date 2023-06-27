#include <stdint.h>
#include "UartDmaRx_Task.h"
#include "definitions.h"
#include "config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.h"


/* Handle for the UART_DMA_RX_Task */
TaskHandle_t xUART_DMA_RX_TaskObject; // extern Declare in "sys_tasksObject.h"

/* Handle Parsing Modbus RTU Message sent from Master */
TaskHandle_t xMODBUS_REGISTER_TaskObject; // extern Declare in "sys_tasksObject.h"
// Declare a queue for handling register commands
QueueHandle_t registerCommandQueue;

#define READ_REG_FUNCODE 0x03
#define WRITE_REG_FUNCODE 0x10
#define REG_DATA_SIZE 2U

#define SLAVE_INDX    0u
#define FUNCODE_INDX  1u
#define WR_REG_ADD_H     2u
#define WR_REG_ADD_L     3u
#define WR_REG_CNT_H     4u  
#define WR_REG_CNT_L     5u
#define WR_CRC_L      6u
#define WR_CRC_H      7u  

#define WR_DATA_PTR_INDEX 7u

#define RD_RESPOND_BYTE_CNT_INDX 2u
#define RD_RESPOND_DATA_INDX_H   3u
#define RD_RESPOND_DATA_INDX_L   4u

/* ---------- Local Functions ---------- */

static int
Modbus_InitTable (MODBUS_REGISTER_TABLE_S *registerTable)
{
  if (registerTable == NULL)
    {
      // Handle null pointer error
      return -1;
    }

  for (int RegIndex = SERIAL_NUMBER_1; RegIndex < TOTAL_MODBUS_REGISTERS; RegIndex++)
    {
      registerTable->MB_REG_DATA[RegIndex] = 0;

      if ((RegIndex >= 0) && (RegIndex <= CHANNEL_10_STATE))
        {
          registerTable->MB_REG_ACCESS_TYPE[RegIndex] = REG_ACCESS_RD;
         // registerTable->MB_REG_DATA[RegIndex] = RegIndex;
        }
      else if ((RegIndex >= CHANNEL_1_CURRENT_SET_POINT) && (RegIndex <= FACTORY_CHANNEL_10_OFFSET_LOW))
        {
          registerTable->MB_REG_ACCESS_TYPE[RegIndex] = REG_ACCESS_RW;
        }
      else if ((RegIndex >= FACTORY_CHANNEL_0A_SLOPE) && (RegIndex <= FACTORY_CHANNEL_10_SLOPE))
        {
          registerTable->MB_REG_ACCESS_TYPE[RegIndex] = REG_ACCESS_RD;
        }
    }
  return 0;
}

/* Temporary API function for MODBUS  Table */

int
Modbus_MultiRead (MODBUS_REGISTER_TABLE_S *registerTable, uint16_t startingAddress, uint16_t registerCount, uint16_t *outputBuffer)
{
  // Check if registerTable pointer, outputBuffer pointer is not NULL, and starting address + register count does not exceed total registers
  if (registerTable == NULL || outputBuffer == NULL || startingAddress + registerCount > TOTAL_MODBUS_REGISTERS)
    {
      return -1; // Return error code
    }

  for (int i = 0; i < registerCount; i++)
    {
      // Check if register can be read
      if ((registerTable->MB_REG_ACCESS_TYPE[startingAddress + i] == REG_ACCESS_RD) || (registerTable->MB_REG_ACCESS_TYPE[startingAddress + i] == REG_ACCESS_RW))
        {
          outputBuffer[i] = registerTable->MB_REG_DATA[startingAddress + i];
        }
      else
        {
          return -2; // Return error code indicating register cannot be read
        }
    }

  return 0; // Return success code
}

int
Modbus_MultiWrite (MODBUS_REGISTER_TABLE_S *registerTable, uint16_t startingAddress, uint16_t registerCount, const uint16_t *inputData)
{
  // Check if registerTable pointer, inputData pointer is not NULL, and starting address + register count does not exceed total registers
  if (registerTable == NULL || inputData == NULL || startingAddress + registerCount > TOTAL_MODBUS_REGISTERS)
    {
      return -1; // Return error code
    }

  for (int i = 0; i < registerCount; i++)
    {
      // Check if register can be written
      if ((registerTable->MB_REG_ACCESS_TYPE[startingAddress + i] == REG_ACCESS_WR) || (registerTable->MB_REG_ACCESS_TYPE[startingAddress + i] == REG_ACCESS_RW))
        {
          registerTable->MB_REG_DATA[startingAddress + i] = inputData[i];
        }
      else
        {
          return -2; // Return error code indicating register cannot be written
        }
    }

  return 0; // Return success code
}


static MODBUS_REGISTER_TABLE_S MOBBUS_REG_TABLE;

/* ---------- Task_Initialize ---------- */
void
UART_DMA_RX_Task_Initialize (void)
{
  UART2_DMA_RX_Initialize ();

}

void
MODBUS_REGISTER_MAP_Task_Initialize (void)
{
  Modbus_InitTable (&MOBBUS_REG_TABLE);
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
      if (ulTaskNotifyTake (pdTRUE, portMAX_DELAY))
        {
          //LED1_Toggle ();

          /* CS verify */
          size_t buffSize = UART2_RX_Object->expectedTotalRxLen;
          MessRXObj.MB_CRC16_Received = ((UART2_RX_Object->data[buffSize - 1] << 8) | UART2_RX_Object->data[buffSize - 2]); // identify the checkSum 
          uint16_t CRC_Computed = Modbus_CRC16 (UART2_RX_Object->data, (buffSize - 2)); // re-calculate cs 
          if (MessRXObj.MB_CRC16_Received != CRC_Computed)
            {
              /* CheckSum did not Match*/
            }
          else
            {
              MessRXObj.MB_SlaveAdd = UART2_RX_Object->data[SLAVE_INDX];
              MessRXObj.MB_FunCode = UART2_RX_Object->data[FUNCODE_INDX];
              MessRXObj.MB_RegAdd = ((UART2_RX_Object->data[WR_REG_ADD_H] << 8) | UART2_RX_Object->data[WR_REG_ADD_L]);
              MessRXObj.MB_RegCnt = ((UART2_RX_Object->data[WR_REG_CNT_H] << 8) | UART2_RX_Object->data[WR_REG_CNT_L]);

              /* respond */
              responseBuffer[SLAVE_INDX] = UART2_RX_Object->data[SLAVE_INDX]; // SlaveAddress
              responseBuffer[FUNCODE_INDX] = UART2_RX_Object->data[FUNCODE_INDX]; // FunCode
              /* Handle The reply */
              switch (UART2_RX_Object->data[FUNCODE_INDX])
                {
                case WRITE_REG_FUNCODE:
                  /* Update RX Message Object */
                  MessRXObj.MB_ByteCnt = MessRXObj.MB_RegCnt * 2;
                  MessRXObj.MB_DataBuffPtr = &UART2_RX_Object->data[WR_DATA_PTR_INDEX];
                  /*Generate WIRTE Reply*/
                  responseBuffer[WR_REG_ADD_H] = UART2_RX_Object->data[WR_REG_ADD_H]; // Starting Address High
                  responseBuffer[WR_REG_ADD_L] = UART2_RX_Object->data[WR_REG_ADD_L]; // Starting Address Low
                  responseBuffer[WR_REG_CNT_H] = UART2_RX_Object->data[WR_REG_CNT_H]; // Quantity of Registers High
                  responseBuffer[WR_REG_CNT_L] = UART2_RX_Object->data[WR_REG_CNT_L]; // Quantity of Registers Low              
                  uint16_t WR_RespondCS = Modbus_CRC16 (responseBuffer, 6);
                  responseBuffer[WR_CRC_L] = WR_RespondCS & 0xFF;
                  responseBuffer[WR_CRC_H] = (WR_RespondCS >> 8) & 0xFF;
                  UART2_Write (responseBuffer, 8);
                  UART2_DMA_RX_Reset ();

                  /*using quue to send MODBUS_Task */
                  for (uint16_t RegIndx = 0; RegIndx < MessRXObj.MB_RegCnt; RegIndx++)
                    {
                      uint16_t _reg_data = ((MessRXObj.MB_DataBuffPtr[0 + (RegIndx * 2)] << 8) | MessRXObj.MB_DataBuffPtr[1 + (RegIndx * 2)]);
                      uint16_t _reg_add = MessRXObj.MB_RegAdd + RegIndx;
                      Modbus_MultiWrite (&MOBBUS_REG_TABLE, _reg_add, 1, &_reg_data);
                       if(_reg_add == 0x42)
                         {
                            xQueueSend (registerCommandQueue, (void*) &_reg_add, portMAX_DELAY);
                         }                   

                    }
                  break;
                case READ_REG_FUNCODE:
                  /* Update RX Message Object */
                  MessRXObj.MB_ByteCnt = 2 * MessRXObj.MB_RegCnt;
                  responseBuffer[RD_RESPOND_BYTE_CNT_INDX] = 2 * MessRXObj.MB_RegCnt;
                  uint16_t registerVal = 0x0000;
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
                          uint16_t _reg_add = MessRXObj.MB_RegAdd + RegIndx;
                          Modbus_MultiRead (&MOBBUS_REG_TABLE, _reg_add, 1, &registerVal);
                          responseBuffer[RD_RESPOND_DATA_INDX_H + (RegIndx * REG_DATA_SIZE)] = (registerVal >> 8) & 0xFF; // High byte reg val
                          responseBuffer[RD_RESPOND_DATA_INDX_L + (RegIndx * REG_DATA_SIZE)] = registerVal & 0xFF; // Low byte reg_val
                          //                          uint16_t _reg_data = ((MessRXObj.MB_DataBuffPtr[0 + (RegIndx * 2)] << 8) | MessRXObj.MB_DataBuffPtr[1 + (RegIndx * 2)]);
//                          if(_reg_add == 0x42)
//                            {
//                               xQueueSend (registerCommandQueue, (void*) &_reg_data, portMAX_DELAY);
//                            }
                        
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

void
MODBUS_REGISTER_MAP_Task_Runing (void)
{
  uint16_t receiveVal = 0;
  uint16_t regVal= 0;
  char lcd_BuffDatastring[20] = {0};
  while (1)
    {

      //Modbus_MultiWrite (&MOBBUS_REG_TABLE, _reg_add, 1, &_reg_data);

      if (xQueueReceive (registerCommandQueue, (void*) &receiveVal, portMAX_DELAY) == pdTRUE)
        {
          // Handle the 
          LED1_Toggle ();
          Modbus_MultiRead (&MOBBUS_REG_TABLE, receiveVal, 1, &regVal);
          sprintf(lcd_BuffDatastring, "0x%.4X",regVal);
          LCD_PRINT_STRING (lcd_BuffDatastring, 0, 1, 0);
        }


      //   vTaskDelay(5 / portTICK_PERIOD_MS);
    }
}
