#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "INTERNAL_REGISTERS_MAP.h"
#include "../USER_HELPER/HELPER_FUNCTION.h"



/*******************************************************************************
 ************************* REGISTER MAP SECTION ******************************** 
 ******************************************************************************/

/*-------------------- Function pointer for REG_HANDLER -----------------------*/




/*-------------------- Function pointer for REG_TABLE -------------------------*/

static uint16_t device0_reg_value_buf[TOTAL_REGISTER_MEM_SIZE] = {0}; // Value register to store/retrieve data
static uint16_t device1_reg_value_buf[TOTAL_REGISTER_MEM_SIZE] = {0}; // Value register to store/retrieve data

static REG_INFO_T RegInfoTable[TOTAL_REGISTER_COUNT] = {
  // Device Properties (0x0000 - 0x00FF)
  {
    .startAddress = 0x0000,
    .word_count = 1,
    .reg_table_index = COMM_REG_INDEX_DEVICE_ADDRESS,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_DEVICE_ADDRESS],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_DEVICE_ADDRESS],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0001,
    .word_count = 1,
    .reg_table_index = COMM_REG_INDEX_FW_VERSION,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_FW_VERSION],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_FW_VERSION],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0002,
    .word_count = 1,
    .reg_table_index = COMM_REG_INDEX_FW_VERSION_TEST,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_FW_VERSION_TEST],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_FW_VERSION_TEST],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0020,
    .word_count = 1,
    .reg_table_index = COMM_REG_INDEX_LOG_PAGE,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_LOG_PAGE],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_LOG_PAGE],
    .handler_functionPtr = NULL,
  },
  // Device Configuration (0x0100 - 0x01FF)
  {
    .startAddress = 0x0104,
    .word_count = 1,
    .reg_table_index = COMM_REG_CONFIG_STORE_RESTORE,
    .accessType = REG_ACCESS_WR,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CONFIG_STORE_RESTORE],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CONFIG_STORE_RESTORE],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0105,
    .word_count = 1,
    .reg_table_index = COMM_REG_WARNING_FLAGS_MASK,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_WARNING_FLAGS_MASK],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_WARNING_FLAGS_MASK],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0106,
    .word_count = 1,
    .reg_table_index = COMM_REG_FAULT_FLAGS_MASK,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_FAULT_FLAGS_MASK],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_FAULT_FLAGS_MASK],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0107,
    .word_count = 1,
    .reg_table_index = COMM_REG_MFR_FAULT_FLAGS_MASK,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_MFR_FAULT_FLAGS_MASK],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_MFR_FAULT_FLAGS_MASK],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0108,
    .word_count = 1,
    .reg_table_index = COMM_REG_MFR_WARNING_FLAGS_MASK,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_MFR_WARNING_FLAGS_MASK],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_MFR_WARNING_FLAGS_MASK],
    .handler_functionPtr = NULL,
  },
  //  {
  //    .startAddress = 0x0109,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_CHANNEL_MAX_CURRENT_1,
  //    .accessType = REG_ACCESS_RW,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_1],
  //    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_1],
  //
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x010A,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_CHANNEL_MAX_CURRENT_2,
  //    .accessType = REG_ACCESS_RW,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_2],
  //    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_2],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x010B,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_CHANNEL_MAX_CURRENT_3,
  //    .accessType = REG_ACCESS_RW,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_3],
  //    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_3],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x010C,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_CHANNEL_MAX_CURRENT_4,
  //    .accessType = REG_ACCESS_RW,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_4],
  //    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_4],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x010D,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_CHANNEL_MAX_CURRENT_5,
  //    .accessType = REG_ACCESS_RW,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_5],
  //    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_5],
  //    .handler_functionPtr = NULL,
  //  },
  // Device and Control Peripheral (0x0200 - 0x02FF)
  {
    .startAddress = 0x0200,
    .word_count = 1,
    .reg_table_index = COMM_REG_MODE_CONTROL,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_MODE_CONTROL],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_MODE_CONTROL],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0201,
    .word_count = 1,
    .reg_table_index = COMM_REG_CALIB_COMMAND,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CALIB_COMMAND],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CALIB_COMMAND],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0202,
    .word_count = 1,
    .reg_table_index = COMM_REG_ON_OFF_OUTPUT,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_ON_OFF_OUTPUT],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_ON_OFF_OUTPUT],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0203,
    .word_count = 1,
    .reg_table_index = COMM_REG_CLEAR_FAULTS,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CLEAR_FAULTS],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CLEAR_FAULTS],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0204,
    .word_count = 1,
    .reg_table_index = COMM_REG_ERASE_LOG,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_ERASE_LOG],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_ERASE_LOG],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0205,
    .word_count = 1,
    .reg_table_index = COMM_REG_SOFTWARE_RESET,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_SOFTWARE_RESET],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_SOFTWARE_RESET],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0206,
    .word_count = 1,
    .reg_table_index = COMM_REG_ENABLE_EXTRA_VMON_MONITOR,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_ENABLE_EXTRA_VMON_MONITOR],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_ENABLE_EXTRA_VMON_MONITOR],
    .handler_functionPtr = NULL,
  },
  // Device and Output Control (0x0300 - 0x03FF)
  {
    .startAddress = 0x0300,
    .word_count = 1,
    .reg_table_index = COMM_REG_CHANNEL_MAX_CURRENT_1,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_1],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_1],

    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0301,
    .word_count = 1,
    .reg_table_index = COMM_REG_CHANNEL_MAX_CURRENT_2,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_2],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_2],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0302,
    .word_count = 1,
    .reg_table_index = COMM_REG_CHANNEL_MAX_CURRENT_3,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_3],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_3],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0303,
    .word_count = 1,
    .reg_table_index = COMM_REG_CHANNEL_MAX_CURRENT_4,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_4],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_4],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0304,
    .word_count = 1,
    .reg_table_index = COMM_REG_CHANNEL_MAX_CURRENT_5,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_5],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_CHANNEL_MAX_CURRENT_5],
    .handler_functionPtr = NULL,
  },
  //-------GAP---
  //-------GAP---
  {
    .startAddress = 0x0308,
    .word_count = 1,
    .reg_table_index = COMM_REG_CURRENT_CHANNEL_1,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_1],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_1],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0309,
    .word_count = 1,
    .reg_table_index = COMM_REG_VOLTAGE_CHANNEL_1,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_1],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_1],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x030A,
    .word_count = 1,
    .reg_table_index = COMM_REG_STATUS_CHANNEL_1,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_1],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_1],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x030B,
    .word_count = 1,
    .reg_table_index = COMM_REG_CURRENT_CHANNEL_2,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_2],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_2],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x030C,
    .word_count = 1,
    .reg_table_index = COMM_REG_VOLTAGE_CHANNEL_2,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_2],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_2],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x030D,
    .word_count = 1,
    .reg_table_index = COMM_REG_STATUS_CHANNEL_2,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_2],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_2],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x030E,
    .word_count = 1,
    .reg_table_index = COMM_REG_CURRENT_CHANNEL_3,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_3],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_3],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x030F,
    .word_count = 1,
    .reg_table_index = COMM_REG_VOLTAGE_CHANNEL_3,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_3],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_3],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0310,
    .word_count = 1,
    .reg_table_index = COMM_REG_STATUS_CHANNEL_3,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_3],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_3],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0311,
    .word_count = 1,
    .reg_table_index = COMM_REG_CURRENT_CHANNEL_4,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_4],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_4],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0312,
    .word_count = 1,
    .reg_table_index = COMM_REG_VOLTAGE_CHANNEL_4,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_4],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_4],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0313,
    .word_count = 1,
    .reg_table_index = COMM_REG_STATUS_CHANNEL_4,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_4],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_4],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0314,
    .word_count = 1,
    .reg_table_index = COMM_REG_CURRENT_CHANNEL_5,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_5],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_5],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0315,
    .word_count = 1,
    .reg_table_index = COMM_REG_VOLTAGE_CHANNEL_5,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_5],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_5],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0316,
    .word_count = 1,
    .reg_table_index = COMM_REG_STATUS_CHANNEL_5,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_5],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_5],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0317,
    .word_count = 1,
    .reg_table_index = COMM_REG_CHANNEL_SETPOINT_1,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_SETPOINT_1],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CHANNEL_SETPOINT_1],
    .handler_functionPtr = NULL,
  },


  {
    .startAddress = 0x0318,
    .word_count = 1,
    .reg_table_index = COMM_REG_CHANNEL_SETPOINT_2,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_SETPOINT_2],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CHANNEL_SETPOINT_2],
    .handler_functionPtr = NULL,
  },


  {
    .startAddress = 0x0319,
    .word_count = 1,
    .reg_table_index = COMM_REG_CHANNEL_SETPOINT_3,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_SETPOINT_3],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CHANNEL_SETPOINT_3],
    .handler_functionPtr = NULL,
  },


  {
    .startAddress = 0x031A,
    .word_count = 1,
    .reg_table_index = COMM_REG_CHANNEL_SETPOINT_4,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_SETPOINT_4],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CHANNEL_SETPOINT_4],
    .handler_functionPtr = NULL,
  },


  {
    .startAddress = 0x031B,
    .word_count = 1,
    .reg_table_index = COMM_REG_CHANNEL_SETPOINT_5,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_SETPOINT_5],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CHANNEL_SETPOINT_5],
    .handler_functionPtr = NULL,
  },


  {
    .startAddress = 0x031C,
    .word_count = 1,
    .reg_table_index = COMM_REG_CHANNEL_ENABLE,
    .accessType = REG_ACCESS_RW,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CHANNEL_ENABLE],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CHANNEL_ENABLE],
    .handler_functionPtr = NULL,
  },
  // Device Fault and Diagnostic (0x0400 - 0x04FF)
  {
    .startAddress = 0x0400,
    .word_count = 1,
    .reg_table_index = COMM_REG_WARN_FLAG_ACTIVE,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_WARN_FLAG_ACTIVE],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_WARN_FLAG_ACTIVE],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0401,
    .word_count = 1,
    .reg_table_index = COMM_REG_MFR_WARN_FLAG_ACTIVE,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_MFR_WARN_FLAG_ACTIVE],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_MFR_WARN_FLAG_ACTIVE],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0402,
    .word_count = 1,
    .reg_table_index = COMM_REG_FAULT_FLAG_ACTIVE,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_FAULT_FLAG_ACTIVE],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_FAULT_FLAG_ACTIVE],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0403,
    .word_count = 1,
    .reg_table_index = COMM_REG_MFR_FAULT_FLAG_ACTIVE,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_MFR_FAULT_FLAG_ACTIVE],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_MFR_FAULT_FLAG_ACTIVE],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0404,
    .word_count = 1,
    .reg_table_index = COMM_REG_WARN_FLAG_LATCHED,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_WARN_FLAG_LATCHED],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_WARN_FLAG_LATCHED],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0405,
    .word_count = 1,
    .reg_table_index = COMM_REG_MFR_WARN_FLAG_LATCHED,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_MFR_WARN_FLAG_LATCHED],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_MFR_WARN_FLAG_LATCHED],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0406,
    .word_count = 1,
    .reg_table_index = COMM_REG_FAULT_FLAG_LATCHED,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_FAULT_FLAG_LATCHED],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_FAULT_FLAG_LATCHED],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0407,
    .word_count = 1,
    .reg_table_index = COMM_REG_MFR_FAULT_FLAG_LATCHED,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_MFR_FAULT_FLAG_LATCHED],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_MFR_FAULT_FLAG_LATCHED],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0408,
    .word_count = 1,
    .reg_table_index = COMM_REG_CYCLE_COUNT,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CYCLE_COUNT],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CYCLE_COUNT],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0409,
    .word_count = 1,
    .reg_table_index = COMM_REG_PON_TIME_HWORD,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_PON_TIME_HWORD],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_PON_TIME_HWORD],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x040A,
    .word_count = 1,
    .reg_table_index = COMM_REG_PON_TIME_LWORD,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_PON_TIME_LWORD],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_PON_TIME_LWORD],
    .handler_functionPtr = NULL,
  },

  //  {
  //    .startAddress = 0x0410,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_STATUS_CHANNEL_1,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_1],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_1],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0411,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_STATUS_CHANNEL_2,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_2],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_2],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0412,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_STATUS_CHANNEL_3,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_3],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_3],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0413,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_STATUS_CHANNEL_4,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_4],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_4],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0414,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_STATUS_CHANNEL_5,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_5],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_STATUS_CHANNEL_5],
  //    .handler_functionPtr = NULL,
  //  },

  // Device Parametric Monitoring (0x0500 - 0x05FF)
  //  {
  //    .startAddress = 0x0500,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_VOLTAGE_CHANNEL_1,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_1],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_1],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0501,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_VOLTAGE_CHANNEL_2,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_2],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_2],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0502,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_VOLTAGE_CHANNEL_3,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_3],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_3],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0503,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_VOLTAGE_CHANNEL_4,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_4],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_4],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0504,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_VOLTAGE_CHANNEL_5,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_5],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_VOLTAGE_CHANNEL_5],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0505,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_CURRENT_CHANNEL_1,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_1],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_1],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0506,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_CURRENT_CHANNEL_2,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_2],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_2],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0507,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_CURRENT_CHANNEL_3,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_3],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_3],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0508,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_CURRENT_CHANNEL_4,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_4],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_4],
  //    .handler_functionPtr = NULL,
  //  },
  //  {
  //    .startAddress = 0x0509,
  //    .word_count = 1,
  //    .reg_table_index = COMM_REG_CURRENT_CHANNEL_5,
  //    .accessType = REG_ACCESS_RD,
  //    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_5],
  //    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CURRENT_CHANNEL_5],
  //    .handler_functionPtr = NULL,
  //  },
  {
    .startAddress = 0x050A,
    .word_count = 1,
    .reg_table_index = COMM_REG_TEMPERATURE_MONITOR,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_TEMPERATURE_MONITOR],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_TEMPERATURE_MONITOR],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x050B,
    .word_count = 1,
    .reg_table_index = COMM_REG_BUCK_OUTPUT_VOLTAGE_1,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_BUCK_OUTPUT_VOLTAGE_1],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_BUCK_OUTPUT_VOLTAGE_1],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x050C,
    .word_count = 1,
    .reg_table_index = COMM_REG_BUCK_OUTPUT_VOLTAGE_2,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_BUCK_OUTPUT_VOLTAGE_2],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_BUCK_OUTPUT_VOLTAGE_2],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x050D,
    .word_count = 1,
    .reg_table_index = COMM_REG_BUCK_OUTPUT_VOLTAGE_3,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_BUCK_OUTPUT_VOLTAGE_3],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_BUCK_OUTPUT_VOLTAGE_3],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x050E,
    .word_count = 1,
    .reg_table_index = COMM_REG_BUCK_OUTPUT_VOLTAGE_4,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_BUCK_OUTPUT_VOLTAGE_4],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_BUCK_OUTPUT_VOLTAGE_4],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x050F,
    .word_count = 1,
    .reg_table_index = COMM_REG_BUCK_OUTPUT_VOLTAGE_5,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_BUCK_OUTPUT_VOLTAGE_5],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_BUCK_OUTPUT_VOLTAGE_5],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x510,
    .word_count = 1,
    .reg_table_index = COMM_REG_EXTRA_OUTPUT_VOLTAGE,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_EXTRA_OUTPUT_VOLTAGE],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_EXTRA_OUTPUT_VOLTAGE],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x511,
    .word_count = 1,
    .reg_table_index = COMM_REG_TOTAL_CURRENT_POS,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_TOTAL_CURRENT_POS],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_TOTAL_CURRENT_POS],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x512,
    .word_count = 1,
    .reg_table_index = COMM_REG_TOTAL_CURRENT_NEG,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_TOTAL_CURRENT_NEG],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_TOTAL_CURRENT_NEG],
    .handler_functionPtr = NULL,
  },

  // Device RTC (0x0600 - 0x06FF)
  {
    .startAddress = 0x0600,
    .word_count = 1,
    .reg_table_index = COMM_REG_CLOCK_SEC,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CLOCK_SEC],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CLOCK_SEC],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0601,
    .word_count = 1,
    .reg_table_index = COMM_REG_CLOCK_MIN,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CLOCK_MIN],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CLOCK_MIN],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0602,
    .word_count = 1,
    .reg_table_index = COMM_REG_CLOCK_HOUR,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CLOCK_HOUR],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CLOCK_HOUR],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0603,
    .word_count = 1,
    .reg_table_index = COMM_REG_CLOCK_DAY,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CLOCK_DAY],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CLOCK_DAY],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0604,
    .word_count = 1,
    .reg_table_index = COMM_REG_CLOCK_MONTH,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CLOCK_MONTH],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CLOCK_MONTH],
    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0605,
    .word_count = 1,
    .reg_table_index = COMM_REG_CLOCK_YEAR,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_CLOCK_YEAR],
    .reg_val_buff_ptr[DEVICE_1] = &device0_reg_value_buf[MEM_INDX_CLOCK_YEAR],
    .handler_functionPtr = NULL,
  },
  // Device Manufacture control (0x0700 - 0x07FF) 
  {
    .startAddress = 0x0706,
    .word_count = 1,
    .reg_table_index = COMM_REG_ENTER_BOOT_MODE_HWORD,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_ENTER_BOOT_MODE_HWORD],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_ENTER_BOOT_MODE_HWORD],

    .handler_functionPtr = NULL,
  },
  {
    .startAddress = 0x0707,
    .word_count = 1,
    .reg_table_index = COMM_REG_ENTER_BOOT_MODE_LWORD,
    .accessType = REG_ACCESS_RD,
    .reg_val_buff_ptr[DEVICE_0] = &device0_reg_value_buf[MEM_INDX_ENTER_BOOT_MODE_LWORD],
    .reg_val_buff_ptr[DEVICE_1] = &device1_reg_value_buf[MEM_INDX_ENTER_BOOT_MODE_LWORD],
    .handler_functionPtr = NULL,
  }
};

/*-------------------- Function pointer for REG_HANDLER -----------------------*/
//static int
//HandleRegister_READ_WRITE (
//                           REG_TABLE_INDX_E reg_table_index,
//                           uint16_t *reg_data_buff,
//                           bool is_read)
//{
//
// if (is_read)
//  {
//   if ((RegInfoTable[reg_table_index].accessType == REG_ACCESS_RD) || (RegInfoTable[reg_table_index].accessType == REG_ACCESS_RW))
//    {
//     for (int i = 0; i < RegInfoTable[reg_table_index].word_count; i++)
//      {
//       reg_data_buff[i] = RegInfoTable[reg_table_index].reg_val_buff_ptr[i];
//      }
//     return 0;
//    }
//   else
//    {
//     return 1;
//    }
//  }
// else
//  {
//   if ((RegInfoTable[reg_table_index].accessType == REG_ACCESS_WR) || (RegInfoTable[reg_table_index].accessType == REG_ACCESS_RW))
//    {
//     for (int i = 0; i < RegInfoTable[reg_table_index].word_count; i++)
//      {
//       RegInfoTable[reg_table_index].reg_val_buff_ptr[i] = reg_data_buff[i];
//      }
//     return 0;
//    }
//   else
//    {
//     return 1;
//    }
//  }
//
//}

/*--------------------------------------------------------------------*/
REG_INFO_T*
Get_PointerRegisterInfo (REG_TABLE_INDX_E inputTableIndex)
{
  if (inputTableIndex < TOTAL_REGISTER_COUNT)
    {
      return &RegInfoTable[inputTableIndex];
    }
  else
    {
      return NULL;
    }
}

int
Get_RegIndexFromTable (uint16_t registerAddress)
{
  for (REG_TABLE_INDX_E tableIndx = 0; tableIndx < TOTAL_REGISTER_COUNT; tableIndx++)
    {
      if (registerAddress == RegInfoTable[tableIndx].startAddress)
        {
          return (int) RegInfoTable[tableIndx].reg_table_index;
        }
    }
  return -1;
}

int
Get_RegisterWordCount (REG_TABLE_INDX_E inputTableIndex)
{
  if (inputTableIndex < TOTAL_REGISTER_COUNT)
    {
      return RegInfoTable[inputTableIndex].word_count;
    }
  else
    {
      return -1;
    }
}

REG_ACESS_TYPE_E
Get_RegisterAccessType (REG_TABLE_INDX_E inputTableIndex)
{
  if (inputTableIndex < TOTAL_REGISTER_COUNT)
    {
      return RegInfoTable[inputTableIndex].accessType;
    }
  else
    {
      return 0;
    }
}

uint32_t
Get_SingleRegisterVal (REG_TABLE_INDX_E inputTableIndex, DEVICE_NAME_E deviceName)
{
  uint32_t tempValue;
  if (RegInfoTable[inputTableIndex].word_count == 1)
    {
      return *(RegInfoTable[inputTableIndex].reg_val_buff_ptr[deviceName]);
    }
  else if (RegInfoTable[inputTableIndex].word_count == 2)
    {
      convert_uint16_to_uint32 (
                                &tempValue,
                                *(RegInfoTable[inputTableIndex].reg_val_buff_ptr[deviceName] + 0),
                                *(RegInfoTable[inputTableIndex].reg_val_buff_ptr[deviceName] + 1));
      return tempValue;
    }
  else
    {
      /* NOT SUPPORT YET !! */
      return 0;
    }

}

void
Set_SingleRegisterVal (uint32_t registerVal, REG_TABLE_INDX_E inputTableIndex, DEVICE_NAME_E deviceName)
{
  uint16_t tempHighByte = 0;
  uint16_t tempLowByte = 0;

  if (RegInfoTable[inputTableIndex].word_count == 1)
    {
      *(RegInfoTable[inputTableIndex].reg_val_buff_ptr[deviceName] + 0) = (0xFFFF & registerVal);
    }
  else if (RegInfoTable[inputTableIndex].word_count == 2)
    {
      convert_uint32_to_uint16 (registerVal, &tempHighByte, &tempLowByte);
      *(RegInfoTable[inputTableIndex].reg_val_buff_ptr[deviceName] + 0) = (0xFFFF & tempHighByte);
      *(RegInfoTable[inputTableIndex].reg_val_buff_ptr[deviceName] + 1) = (0xFFFF & tempLowByte);

    }
  else
    {
      /* NOT SUPPORT YET !! */
      return;
    }

}

