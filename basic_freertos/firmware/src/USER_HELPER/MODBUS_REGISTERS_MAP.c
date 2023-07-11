#include <stdint.h>
#include "definitions.h"
#include "MODBUS_REGISTERS_MAP.h"

int
Modbus_InitTable (MODBUS_REGISTER_TABLE_S *registerTable)
{
  if (registerTable == NULL)
    {
      // Handle null pointer error
      return -1;
    }

  for (int RegIndex = SERIAL_NUMBER_1; RegIndex < TOTAL_MODBUS_REGISTERS; RegIndex++)
    {
      /* Initialize the Data + AccessType */
      registerTable->MB_REG_DATA[RegIndex] = 0;
      registerTable->MB_REG_DEVICE_ID[RegIndex] = 0xFF;
      registerTable->InternalRegAdd[RegIndex] = 0xFFFF;
      registerTable->isNEW_FLAG[RegIndex] = 0;

      if ((RegIndex >= 0) && (RegIndex <= CHANNEL_10_STATE))
        {
          registerTable->MB_REG_ACCESS_TYPE[RegIndex] = MODBUS_REG_ACCESS_RD;
        }
      else if ((RegIndex >= CHANNEL_1_CURRENT_SET_POINT) && (RegIndex <= FACTORY_CHANNEL_10_OFFSET_LOW))
        {
          registerTable->MB_REG_ACCESS_TYPE[RegIndex] = MODBUS_REG_ACCESS_RW;
        }
      else if ((RegIndex >= FACTORY_CHANNEL_0A_SLOPE) && (RegIndex <= FACTORY_CHANNEL_10_SLOPE))
        {
          registerTable->MB_REG_ACCESS_TYPE[RegIndex] = MODBUS_REG_ACCESS_RD;
        }

      /* Initialize STM32 Device ID ( Set MAX CURRENT )  */
      if ((RegIndex >= CHANNEL_1_MAX_CURRENT) && (RegIndex <= CHANNEL_5_MAX_CURRENT))
        {
          registerTable->MB_REG_DEVICE_ID[RegIndex] = DEV_STM32_1;
          registerTable->InternalRegAdd[RegIndex] = (RegIndex - CHANNEL_1_MAX_CURRENT) + 0x300; // Max Current Channel 1 
        }

      if ((RegIndex >= CHANNEL_6_MAX_CURRENT) && (RegIndex <= CHANNEL_10_MAX_CURRENT))
        {
          registerTable->MB_REG_DEVICE_ID[RegIndex] = DEV_STM32_2;
          registerTable->InternalRegAdd[RegIndex] = (RegIndex - CHANNEL_6_MAX_CURRENT) + 0x300;
        }

      /* Initialize STM32 Device ID ( Set MONITOR STATUS  ) */
      if ((RegIndex >= CHANNEL_1_MEASURED_CURRENT) && (RegIndex <= CHANNEL_5_STATE))
        {
          registerTable->MB_REG_DEVICE_ID[RegIndex] = DEV_STM32_1;
          registerTable->InternalRegAdd[RegIndex] = (RegIndex - CHANNEL_1_MEASURED_CURRENT) + 0x308; // Current Channel 1 

        }

      if ((RegIndex >= CHANNEL_6_MEASURED_CURRENT) && (RegIndex <= CHANNEL_10_STATE))
        {
          registerTable->MB_REG_DEVICE_ID[RegIndex] = DEV_STM32_2;
          registerTable->InternalRegAdd[RegIndex] = (RegIndex - CHANNEL_6_MEASURED_CURRENT) + 0x308;

        }

      /* Initialize STM32 Device ID ( Set SET POINT  ) */
      if ((RegIndex >= CHANNEL_1_CURRENT_SET_POINT) && (RegIndex <= CHANNEL_5_CURRENT_SET_POINT)) // Channel Set Point
        {
          registerTable->MB_REG_DEVICE_ID[RegIndex] = DEV_STM32_1;
          registerTable->InternalRegAdd[RegIndex] = (RegIndex - CHANNEL_1_CURRENT_SET_POINT) + 0x317;
        }

      if ((RegIndex >= CHANNEL_6_CURRENT_SET_POINT) && (RegIndex <= CHANNEL_10_CURRENT_SET_POINT))
        {
          registerTable->MB_REG_DEVICE_ID[RegIndex] = DEV_STM32_2;
          registerTable->InternalRegAdd[RegIndex] = (RegIndex - CHANNEL_6_CURRENT_SET_POINT) + 0x317;
        }

      /* Initialize STM32 Device ID ( Set ENABLE   ) */
      if ((RegIndex >= CHANNEL_1_ENABLE) && (RegIndex <= CHANNEL_5_ENABLE))
        {
          registerTable->MB_REG_DEVICE_ID[RegIndex] = DEV_STM32_1;
          registerTable->InternalRegAdd[RegIndex] = 0x031C;
        }

      if ((RegIndex >= CHANNEL_6_ENABLE) && (RegIndex <= CHANNEL_10_ENABLE))
        {
          registerTable->MB_REG_DEVICE_ID[RegIndex] = DEV_STM32_2;
          registerTable->InternalRegAdd[RegIndex] = 0x031C;
        }
    }
  return 0;
}

/* Temporary API function for MODBUS  Table */
int
Modbus_MultiRead (MODBUS_REGISTER_TABLE_S *registerTable, uint16_t startingAddress, uint16_t registerCount, uint16_t *outputBuffer)
{
  // Check if registerTable pointer, outputBuffer pointer is not NULL, and starting address + register count does not exceed total registers
  if ((registerTable == NULL) || (outputBuffer == NULL) || ((startingAddress + registerCount) > TOTAL_MODBUS_REGISTERS))
    {
      return -1; // Return error code
    }

  for (int i = 0; i < registerCount; i++)
    {
      // Check if register can be read
      if (((uint16_t) registerTable->MB_REG_ACCESS_TYPE[startingAddress + i] == (uint16_t) MODBUS_REG_ACCESS_RD) ||
          ((uint16_t) registerTable->MB_REG_ACCESS_TYPE[startingAddress + i] == (uint16_t) MODBUS_REG_ACCESS_RW))
        {
          // TO DO: Might want to check isNEW_FLAG before read
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
  if ((registerTable == NULL) || (inputData == NULL) || ((startingAddress + registerCount) > TOTAL_MODBUS_REGISTERS))
    {
      return -1; // Return error code
    }

  for (int i = 0; i < registerCount; i++)
    {
      // Check if register can be written
      if (((uint16_t) registerTable->MB_REG_ACCESS_TYPE[startingAddress + i] == (uint16_t) MODBUS_REG_ACCESS_WR) ||
          ((uint16_t) registerTable->MB_REG_ACCESS_TYPE[startingAddress + i] == (uint16_t) MODBUS_REG_ACCESS_RW))
        {
          registerTable->MB_REG_DATA[startingAddress + i] = inputData[i];
          registerTable->isNEW_FLAG[startingAddress + i] = 1;
        }
      else
        {
          return -2; // Return error code indicating register cannot be written
        }
    }

  return 0; // Return success code
}

bool
Modbus_CheckNewFlag (MODBUS_REGISTER_TABLE_S *registerTable, uint16_t startingAddress)
{
  // Check if registerTable pointer, inputData pointer is not NULL, and starting address + register count does not exceed total registers
  if ((registerTable == NULL) || (startingAddress > TOTAL_MODBUS_REGISTERS))
    {
      return 0; // Return error code
    }

  return (1 == registerTable->isNEW_FLAG[startingAddress]);
}

void
Modbus_ClearNewFlag (MODBUS_REGISTER_TABLE_S *registerTable, uint16_t startingAddress)
{
  // Check if registerTable pointer, inputData pointer is not NULL, and starting address + register count does not exceed total registers
  if ((registerTable == NULL) || (startingAddress > TOTAL_MODBUS_REGISTERS))
    {
      return; // Return error code
    }
  registerTable->isNEW_FLAG[startingAddress] = 0;
}

bool
Modbus_CheckSTM32_Address (MODBUS_REGISTER_TABLE_S *registerTable, uint16_t startingAddress)
{
  // Check if registerTable pointer, inputData pointer is not NULL, and starting address + register count does not exceed total registers
  if ((registerTable == NULL) || (startingAddress > TOTAL_MODBUS_REGISTERS))
    {
      return false; // Return error code
    }
  return (0xFFFF != registerTable->InternalRegAdd[startingAddress]);
}
