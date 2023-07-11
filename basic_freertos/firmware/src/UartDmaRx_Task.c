#include <stdint.h>
#include "UartDmaRx_Task.h"
#include "definitions.h"
#include "config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.h"
#include "config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.h"
#include "config/pic32mx_eth_sk2/peripheral/SPI_baremetal/SPI_COMM_INTERFACE.h"
#include "config/pic32mx_eth_sk2/peripheral/SPI_baremetal/SPI.h"
#include "USER_HELPER/MODBUS_REGISTERS_MAP.h"


/* Handle for the UART_DMA_RX_Task */
TaskHandle_t xUART_DMA_RX_TaskObject; // extern Declare in "sys_tasksObject.h"

/* Handle Parsing Modbus RTU Message sent from Master */
TaskHandle_t xMODBUS_REGISTER_WR_TaskObject; // extern Declare in "sys_tasksObject.h"
TaskHandle_t xMODBUS_REGISTER_RD_TaskObject; // extern Declare in "sys_tasksObject.h"


// Declare a queue for handling register commands
QueueHandle_t modbusWrittenQueue;
QueueHandle_t modbusReadQueue;
QueueHandle_t modbusReadReplyQueue;

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



//static uint16_t
//ChannelEnableDev1_CH1_CH5 (uint16_t modbusAdd, uint16_t modbusData);
//static uint16_t
//ChannelEnableDev1_CH6_CH10 (uint16_t modbusAdd, uint16_t modbusData);





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
  SPI1_Init_Master (1000000);
}

/* Draft version ( need to factoring the code ) */
static int
ChannelEnableDev1_CH1_CH5 (uint16_t modbusAdd, uint16_t modbusData)
{
  static uint16_t InternalRegVal;
  if ((CHANNEL_1_ENABLE <= modbusAdd) && (modbusAdd <= CHANNEL_5_ENABLE))
    {
      uint8_t channelBit = (modbusAdd) - CHANNEL_1_ENABLE;
      if (modbusData == 0x01)
        {
          uint16_t tempValSET = (1 << channelBit);
          InternalRegVal = InternalRegVal | tempValSET;
        }
      else
        {
          uint16_t tempValCLR = ~(1 << channelBit);
          InternalRegVal = InternalRegVal & tempValCLR;
        }
    }
  return InternalRegVal;
}

static uint16_t
ChannelEnableDev2_CH6_CH10 (uint16_t modbusAdd, uint16_t modbusData)
{
  static uint16_t InternalRegVal;
  if ((CHANNEL_6_ENABLE <= modbusAdd) && (modbusAdd <= CHANNEL_10_ENABLE))
    {
      uint8_t channelBit = (modbusAdd) - CHANNEL_6_ENABLE;
      if (modbusData == 0x01)
        {
          uint16_t tempValSET = (1 << channelBit);
          InternalRegVal = InternalRegVal | tempValSET;
        }
      else
        {
          uint16_t tempValCLR = ~(1 << channelBit);
          InternalRegVal = InternalRegVal & tempValCLR;
        }

    }
  return InternalRegVal;
}

void
UART_DMA_RX_Task_Running (void)
{
  uint16_t CH_1_5_Status = 0;
  uint16_t CH_6_10_Status = 0;
  /* TaskObjectHandler */
  xUART_DMA_RX_TaskObject = xTaskGetCurrentTaskHandle ();
  // uint32_t ulNotifiedValue;

  /* Handle DMA Uart Rev */
  UART_RX_DMA_CtrlObj* UART2_RX_Object = UART2_Get_CtrlObjectPtr ();
  unsigned char responseBuffer[256];

  /* Handle Parsing Message */
  ModbusMessage_t MessRXObj;
  MODBUS_REISTER_INFO regProcessObj;
  MODBUS_REISTER_INFO regSendObj;

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


                  /* xQueueSend MODBUS_Task */
                  for (uint16_t RegIndx = 0; RegIndx < MessRXObj.MB_RegCnt; RegIndx++)
                    {
                      regProcessObj.regAdd = MessRXObj.MB_RegAdd + RegIndx;
                      regProcessObj.regData = ((MessRXObj.MB_DataBuffPtr[0 + (RegIndx * 2)] << 8) | MessRXObj.MB_DataBuffPtr[1 + (RegIndx * 2)]);
                      Modbus_MultiWrite (&MOBBUS_REG_TABLE, regProcessObj.regAdd, 1, &regProcessObj.regData);

                      CH_1_5_Status = ChannelEnableDev1_CH1_CH5 (regProcessObj.regAdd, regProcessObj.regData);
                      CH_6_10_Status = ChannelEnableDev2_CH6_CH10 (regProcessObj.regAdd, regProcessObj.regData);

                      // if (CHANNEL_1_SLOPE <= regProcessObj.regAdd)
                      //                      if ( (0x23 <= regProcessObj.regAdd) && Modbus_CheckSTM32_Address (&MOBBUS_REG_TABLE,regProcessObj.regAdd) )
                      //                        {
                      //                          regSendObj.regAdd = regProcessObj.regAdd;
                      //                          regSendObj.regData = regProcessObj.regData;
                      //                        //  xQueueSend (modbusWrittenQueue, &regSendObj, portMAX_DELAY);
                      //                        }


                    }

                  if (Modbus_CheckNewFlag (&MOBBUS_REG_TABLE, CHANNEL_1_ENABLE))
                    {
                      regSendObj.regAdd = CHANNEL_1_ENABLE;
                      regSendObj.regData = CH_1_5_Status;
                      xQueueSend (modbusWrittenQueue, &regSendObj, portMAX_DELAY);
                    }

                  if (Modbus_CheckNewFlag (&MOBBUS_REG_TABLE, CHANNEL_6_ENABLE))
                    {
                      regSendObj.regAdd = CHANNEL_6_ENABLE;
                      regSendObj.regData = CH_6_10_Status;
                      xQueueSend (modbusWrittenQueue, &regSendObj, portMAX_DELAY);
                    }
                  
                  


                  break;
                case READ_REG_FUNCODE:
                  /* Update RX Message Object */
                  MessRXObj.MB_ByteCnt = 2 * MessRXObj.MB_RegCnt;
                  responseBuffer[RD_RESPOND_BYTE_CNT_INDX] = 2 * MessRXObj.MB_RegCnt;
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
                          regProcessObj.regAdd = MessRXObj.MB_RegAdd + RegIndx;
                          regProcessObj.regData = 0x0000;
                          Modbus_MultiRead (&MOBBUS_REG_TABLE, regProcessObj.regAdd, 1, &regProcessObj.regData);
                          responseBuffer[RD_RESPOND_DATA_INDX_H + (RegIndx * REG_DATA_SIZE)] = (regProcessObj.regData >> 8) & 0xFF; // High byte reg val
                          responseBuffer[RD_RESPOND_DATA_INDX_L + (RegIndx * REG_DATA_SIZE)] = regProcessObj.regData & 0xFF; // Low byte reg_val
                          LED2_Toggle ();

//                          if (CHANNEL_1_ENABLE == regProcessObj.regAdd)
//                            {
//                              regSendObj.regAdd = regProcessObj.regAdd;
//                              regSendObj.regData = regProcessObj.regData;
//                              xQueueSend (modbusReadQueue, &regSendObj, portMAX_DELAY);
//                            }
//
//                          if (CHANNEL_6_ENABLE == regProcessObj.regAdd)
//                            {
//                              regSendObj.regAdd = regProcessObj.regAdd;
//                              regSendObj.regData = regProcessObj.regData;
//                              xQueueSend (modbusReadQueue, &regSendObj, portMAX_DELAY);
//                            }

                          //if ((0x23 <= regProcessObj.regAdd) && Modbus_CheckSTM32_Address (&MOBBUS_REG_TABLE, regProcessObj.regAdd))
                            if (CHANNEL_1_MAX_CURRENT <= regProcessObj.regAdd && CHANNEL_10_ENABLE >= regProcessObj.regAdd )  
                          {
                              regSendObj.regAdd = regProcessObj.regAdd;
                              regSendObj.regData = regProcessObj.regData;
                              xQueueSend (modbusReadQueue, &regSendObj, portMAX_DELAY);
                           }

                        }

                    }
                  break;
                default:
                  break;
                }
            }
        }
      // vTaskDelay (5 / portTICK_PERIOD_MS);
    }
}

void
MODBUS_WR_Request_Task_Runing (void)
{

  MODBUS_REISTER_INFO regInfoWR;
  commsinterface_handle_t testPacket1 = {0};
  commsinterface_cfg_t testConfigPacket1 = {0};
  CommSPI_SetupNewPacket (&testPacket1, &testConfigPacket1, 0x01);
  uint16_t channelStatus1;
  uint16_t channelStatus2;

  while (1)
    {

      if (xQueueReceive (modbusWrittenQueue, (void*) &regInfoWR, portMAX_DELAY) == pdTRUE)
        {
          if (Modbus_CheckSTM32_Address (&MOBBUS_REG_TABLE, regInfoWR.regAdd))
            {
              if (MOBBUS_REG_TABLE.MB_REG_DEVICE_ID[regInfoWR.regAdd] == DEV_STM32_1)
                {
                  CommSPI_ProcessTransmitSinglePacket (&testPacket1, DEV_STM32_1, MOBBUS_REG_TABLE.InternalRegAdd[regInfoWR.regAdd], regInfoWR.regData, COMMSINTERFACE_FUNC_CODE_SINGLE_WRITE);
                  CORETIMER_DelayUs (450);
                  CommSPI_ProcessReceiveSinglePacket (&testPacket1, MOBBUS_REG_TABLE.InternalRegAdd[regInfoWR.regAdd], &channelStatus1, COMMSINTERFACE_FUNC_CODE_SINGLE_WRITE_RESPOND);
                  Modbus_ClearNewFlag (&MOBBUS_REG_TABLE, CHANNEL_1_ENABLE);
                  vTaskDelay (3);
                }
              else if (MOBBUS_REG_TABLE.MB_REG_DEVICE_ID[regInfoWR.regAdd] == DEV_STM32_2)
                {
                  CommSPI_ProcessTransmitSinglePacket (&testPacket1, DEV_STM32_2, MOBBUS_REG_TABLE.InternalRegAdd[regInfoWR.regAdd], regInfoWR.regData, COMMSINTERFACE_FUNC_CODE_SINGLE_WRITE);
                  CORETIMER_DelayUs (450);
                  CommSPI_ProcessReceiveSinglePacket (&testPacket1, MOBBUS_REG_TABLE.InternalRegAdd[regInfoWR.regAdd], &channelStatus2, COMMSINTERFACE_FUNC_CODE_SINGLE_WRITE_RESPOND);
                  Modbus_ClearNewFlag (&MOBBUS_REG_TABLE, CHANNEL_6_ENABLE);
                  vTaskDelay (3);
                }
            }


        }

    }
}

void
MODBUS_RD_Request_Task_Runing (void)
{
  MODBUS_REISTER_INFO regInfoRD;
  commsinterface_handle_t testPacket1 = {0};
  commsinterface_cfg_t testConfigPacket1 = {0};
  CommSPI_SetupNewPacket (&testPacket1, &testConfigPacket1, 0x01);
  uint16_t channelStatus1;
  uint16_t channelStatus2;

  while (1)
    {
      if (xQueueReceive (modbusReadQueue, (void*) &regInfoRD, portMAX_DELAY) == pdTRUE)
        {
          if (Modbus_CheckSTM32_Address (&MOBBUS_REG_TABLE, regInfoRD.regAdd))
            {

              if (MOBBUS_REG_TABLE.MB_REG_DEVICE_ID[regInfoRD.regAdd] == DEV_STM32_1)
                {
                  CommSPI_ProcessTransmitSinglePacket (&testPacket1, DEV_STM32_1, MOBBUS_REG_TABLE.InternalRegAdd[regInfoRD.regAdd], regInfoRD.regData, COMMSINTERFACE_FUNC_CODE_SINGLE_READ);
                  CORETIMER_DelayUs (80);
                  CommSPI_ProcessReceiveSinglePacket (&testPacket1, MOBBUS_REG_TABLE.InternalRegAdd[regInfoRD.regAdd], &channelStatus1, COMMSINTERFACE_FUNC_CODE_SINGLE_READ_RESPOND);
                   vTaskDelay (1);

                }
              else if (MOBBUS_REG_TABLE.MB_REG_DEVICE_ID[regInfoRD.regAdd] == DEV_STM32_2)
                {
                  CommSPI_ProcessTransmitSinglePacket (&testPacket1, DEV_STM32_2, MOBBUS_REG_TABLE.InternalRegAdd[regInfoRD.regAdd], regInfoRD.regData, COMMSINTERFACE_FUNC_CODE_SINGLE_READ);
                  CORETIMER_DelayUs (80);
                  CommSPI_ProcessReceiveSinglePacket (&testPacket1, MOBBUS_REG_TABLE.InternalRegAdd[regInfoRD.regAdd], &channelStatus2, COMMSINTERFACE_FUNC_CODE_SINGLE_READ_RESPOND);
                  vTaskDelay (1);

                }
            }

        }

    }
}
