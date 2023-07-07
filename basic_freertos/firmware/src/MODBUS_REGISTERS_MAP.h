/* 
 * File:   MODBUS_REGISTERS_MAP.h
 * Author: bang.nguyen
 *
 * Created on July 6, 2023, 3:28 PM
 */

#ifndef MODBUS_REGISTERS_MAP_H
#define	MODBUS_REGISTERS_MAP_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "USER_HELPER/INTERNAL_REGISTERS_MAP.h"

#ifdef	__cplusplus
extern "C" {
#endif

      typedef enum {
        SERIAL_NUMBER_1 = 0x00,
        SERIAL_NUMBER_2 = 0x01,
        SERIAL_NUMBER_3 = 0x02,
        SERIAL_NUMBER_4 = 0x03,
        PART_NUMBER_1 = 0x04,
        PART_NUMBER_2 = 0x05,
        PART_NUMBER_3 = 0x06,
        FIRMWARE_VERSION_1 = 0x07,
        FIRMWARE_VERSION_2 = 0x08,
        FIRMWARE_VERSION_3 = 0x09,
        FIRMWARE_VERSION_4 = 0x0A,
        FIRMWARE_VERSION_5 = 0x0B,
        FIRMWARE_VERSION_6 = 0x0C,
        CHANNEL_1_MAX_CURRENT = 0x0D,
        CHANNEL_2_MAX_CURRENT = 0x0E,
        CHANNEL_3_MAX_CURRENT = 0x0F,
        CHANNEL_4_MAX_CURRENT = 0x10,
        CHANNEL_5_MAX_CURRENT = 0x11,
        CHANNEL_6_MAX_CURRENT = 0x12,
        CHANNEL_7_MAX_CURRENT = 0x13,
        CHANNEL_8_MAX_CURRENT = 0x14,
        CHANNEL_9_MAX_CURRENT = 0x15,
        CHANNEL_10_MAX_CURRENT = 0x16,
        HOUSING_TEMPERATURE = 0x17,
        CHANNEL_0A_MEASURED_CURRENT = 0x18,
        CHANNEL_0B_MEASURED_CURRENT = 0x19,
        CHANNEL_1_MEASURED_CURRENT = 0x1A,
        CHANNEL_1_MEASURED_VOLTAGE = 0x1B,
        CHANNEL_1_STATE = 0x1C,
        CHANNEL_2_MEASURED_CURRENT = 0x1D,
        CHANNEL_2_MEASURED_VOLTAGE = 0x1E,
        CHANNEL_2_STATE = 0x1F,
        CHANNEL_3_MEASURED_CURRENT = 0x20,
        CHANNEL_3_MEASURED_VOLTAGE = 0x21,
        CHANNEL_3_STATE = 0x22,
        CHANNEL_4_MEASURED_CURRENT = 0x23,
        CHANNEL_4_MEASURED_VOLTAGE = 0x24,
        CHANNEL_4_STATE = 0x25,
        CHANNEL_5_MEASURED_CURRENT = 0x26,
        CHANNEL_5_MEASURED_VOLTAGE = 0x27,
        CHANNEL_5_STATE = 0x28,
        CHANNEL_6_MEASURED_CURRENT = 0x29,
        CHANNEL_6_MEASURED_VOLTAGE = 0x2A,
        CHANNEL_6_STATE = 0x2B,
        CHANNEL_7_MEASURED_CURRENT = 0x2C,
        CHANNEL_7_MEASURED_VOLTAGE = 0x2D,
        CHANNEL_7_STATE = 0x2E,
        CHANNEL_8_MEASURED_CURRENT = 0x2F,
        CHANNEL_8_MEASURED_VOLTAGE = 0x30,
        CHANNEL_8_STATE = 0x31,
        CHANNEL_9_MEASURED_CURRENT = 0x32,
        CHANNEL_9_MEASURED_VOLTAGE = 0x33,
        CHANNEL_9_STATE = 0x34,
        CHANNEL_10_MEASURED_CURRENT = 0x35,
        CHANNEL_10_MEASURED_VOLTAGE = 0x36,
        CHANNEL_10_STATE = 0x37,
        CHANNEL_1_CURRENT_SET_POINT = 0x38,
        CHANNEL_2_CURRENT_SET_POINT = 0x39,
        CHANNEL_3_CURRENT_SET_POINT = 0x3A,
        CHANNEL_4_CURRENT_SET_POINT = 0x3B,
        CHANNEL_5_CURRENT_SET_POINT = 0x3C,
        CHANNEL_6_CURRENT_SET_POINT = 0x3D,
        CHANNEL_7_CURRENT_SET_POINT = 0x3E,
        CHANNEL_8_CURRENT_SET_POINT = 0x3F,
        CHANNEL_9_CURRENT_SET_POINT = 0x40,
        CHANNEL_10_CURRENT_SET_POINT = 0x41,
        CHANNEL_1_ENABLE = 0x42,
        CHANNEL_2_ENABLE = 0x43,
        CHANNEL_3_ENABLE = 0x44,
        CHANNEL_4_ENABLE = 0x45,
        CHANNEL_5_ENABLE = 0x46,
        CHANNEL_6_ENABLE = 0x47,
        CHANNEL_7_ENABLE = 0x48,
        CHANNEL_8_ENABLE = 0x49,
        CHANNEL_9_ENABLE = 0x4A,
        CHANNEL_10_ENABLE = 0x4B,
        INITIALIZE_PS = 0x4C,
        CHANNEL_0A_OFFSET_LOW = 0x4D,
        CHANNEL_0B_OFFSET_LOW = 0x4E,
        CHANNEL_1_OFFSET_LOW = 0x4F,
        CHANNEL_2_OFFSET_LOW = 0x50,
        CHANNEL_3_OFFSET_LOW = 0x51,
        CHANNEL_4_OFFSET_LOW = 0x52,
        CHANNEL_5_OFFSET_LOW = 0x53,
        CHANNEL_6_OFFSET_LOW = 0x54,
        CHANNEL_7_OFFSET_LOW = 0x55,
        CHANNEL_8_OFFSET_LOW = 0x56,
        CHANNEL_9_OFFSET_LOW = 0x57,
        CHANNEL_10_OFFSET_LOW = 0x58,
        CHANNEL_0A_SLOPE = 0x59,
        CHANNEL_0B_SLOPE = 0x5A,
        CHANNEL_1_SLOPE = 0x5B,
        CHANNEL_2_SLOPE = 0x5C,
        CHANNEL_3_SLOPE = 0x5D,
        CHANNEL_4_SLOPE = 0x5E,
        CHANNEL_5_SLOPE = 0x5F,
        CHANNEL_6_SLOPE = 0x60,
        CHANNEL_7_SLOPE = 0x61,
        CHANNEL_8_SLOPE = 0x62,
        CHANNEL_9_SLOPE = 0x63,
        CHANNEL_10_SLOPE = 0x64,
        FACTORY_CHANNEL_0A_OFFSET_LOW = 0x65,
        FACTORY_CHANNEL_0B_OFFSET_LOW = 0x66,
        FACTORY_CHANNEL_1_OFFSET_LOW = 0x67,
        FACTORY_CHANNEL_2_OFFSET_LOW = 0x68,
        FACTORY_CHANNEL_3_OFFSET_LOW = 0x69,
        FACTORY_CHANNEL_4_OFFSET_LOW = 0x6A,
        FACTORY_CHANNEL_5_OFFSET_LOW = 0x6B,
        FACTORY_CHANNEL_6_OFFSET_LOW = 0x6C,
        FACTORY_CHANNEL_7_OFFSET_LOW = 0x6D,
        FACTORY_CHANNEL_8_OFFSET_LOW = 0x6E,
        FACTORY_CHANNEL_9_OFFSET_LOW = 0x6F,
        FACTORY_CHANNEL_10_OFFSET_LOW = 0x70,
        FACTORY_CHANNEL_0A_SLOPE = 0x71,
        FACTORY_CHANNEL_0B_SLOPE = 0x72,
        FACTORY_CHANNEL_1_SLOPE = 0x73,
        FACTORY_CHANNEL_2_SLOPE = 0x74,
        FACTORY_CHANNEL_3_SLOPE = 0x75,
        FACTORY_CHANNEL_4_SLOPE = 0x76,
        FACTORY_CHANNEL_5_SLOPE = 0x77,
        FACTORY_CHANNEL_6_SLOPE = 0x78,
        FACTORY_CHANNEL_7_SLOPE = 0x79,
        FACTORY_CHANNEL_8_SLOPE = 0x7A,
        FACTORY_CHANNEL_9_SLOPE = 0x7B,
        FACTORY_CHANNEL_10_SLOPE = 0x7C,
        //..........
        TOTAL_MODBUS_REGISTERS
    } MODBUS_REGISTER_E;
    

    typedef enum {
        DEV_STM32_1 = 0x00,
        DEV_STM32_2,
        TOTAL_STM32_DEV,
        DEV_PIC32
    } MODBUS_DEV_ADDRESS_E;

    typedef enum {
        MODBUS_REG_ACCESS_RD = 0x01, /**< Read access type */
        MODBUS_REG_ACCESS_WR = 0x02, /**< Write access type */
        MODBUS_REG_ACCESS_RW = (MODBUS_REG_ACCESS_RD | MODBUS_REG_ACCESS_WR), /**< Read and Write access type */
    } MODBUS_REG_ACESS_TYPE_E;

    typedef struct {
        uint16_t MB_REG_DATA[TOTAL_MODBUS_REGISTERS];
        MODBUS_REG_ACESS_TYPE_E MB_REG_ACCESS_TYPE[TOTAL_MODBUS_REGISTERS];
        MODBUS_DEV_ADDRESS_E MB_REG_DEVICE_ID[TOTAL_MODBUS_REGISTERS];
        uint16_t InternalRegAdd[TOTAL_MODBUS_REGISTERS];
        uint8_t isNEW_FLAG[TOTAL_MODBUS_REGISTERS];
    } MODBUS_REGISTER_TABLE_S;

    typedef struct {
        uint16_t regAdd;
        uint16_t regData;
    } MODBUS_REISTER_INFO;

    /* Both read and write */
    typedef struct {
        uint8_t MB_SlaveAdd;
        uint8_t MB_FunCode;
        uint16_t MB_RegAdd;
        uint16_t MB_RegCnt;
        uint8_t MB_ByteCnt;
        uint8_t* MB_DataBuffPtr;
        uint16_t MB_CRC16_Received;
    } ModbusMessage_t;
    
    /* Function List for API */
    int Modbus_InitTable (MODBUS_REGISTER_TABLE_S *registerTable);
    int Modbus_MultiRead(MODBUS_REGISTER_TABLE_S *registerTable, uint16_t startingAddress, uint16_t registerCount, uint16_t *outputBuffer);
    int Modbus_MultiWrite(MODBUS_REGISTER_TABLE_S *registerTable, uint16_t startingAddress, uint16_t registerCount, const uint16_t *inputData);
    bool Modbus_CheckNewFlag(MODBUS_REGISTER_TABLE_S *registerTable, uint16_t startingAddress);
    void Modbus_ClearNewFlag(MODBUS_REGISTER_TABLE_S *registerTable, uint16_t startingAddress);
    bool Modbus_CheckSTM32_Address (MODBUS_REGISTER_TABLE_S *registerTable, uint16_t startingAddress);



#ifdef	__cplusplus
}
#endif

#endif	/* MODBUS_REGISTERS_MAP_H */

