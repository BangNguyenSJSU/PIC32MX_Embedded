/* 
 * File:   REGISTERS_MAP.h
 * Author: bang.nguyen
 *
 * Created on May 22, 2023, 1:01 PM
 */

#ifndef REGISTERS_MAP_H
#define	REGISTERS_MAP_H

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include <xc.h>
#include <sys/attribs.h>
//#include "SPI_COMM_INTERFACE.h"

#ifdef	__cplusplus
extern "C" {
#endif

    typedef enum {
        /*-------- Device Properties --------*/
        COMM_REG_INDEX_DEVICE_ADDRESS,
        COMM_REG_INDEX_FW_VERSION,
        COMM_REG_INDEX_FW_VERSION_TEST,
        //        COMM_REG_INDEX_MFR_MODEL,
        //        COMM_REG_INDEX_MFR_VERSION,
        //        COMM_REG_INDEX_MFR_DATE,
        //        COMM_REG_INDEX_MFR_SERIAL,
        COMM_REG_INDEX_LOG_PAGE,
        /*-------- Device Configuration  --------*/
        COMM_REG_CONFIG_STORE_RESTORE, 
        COMM_REG_WARNING_FLAGS_MASK,
        COMM_REG_FAULT_FLAGS_MASK,
        COMM_REG_MFR_FAULT_FLAGS_MASK,
        COMM_REG_MFR_WARNING_FLAGS_MASK,
        COMM_REG_CHANNEL_MAX_CURRENT_1,
        COMM_REG_CHANNEL_MAX_CURRENT_2,
        COMM_REG_CHANNEL_MAX_CURRENT_3,
        COMM_REG_CHANNEL_MAX_CURRENT_4,
        COMM_REG_CHANNEL_MAX_CURRENT_5,
        /*-------- Device and peripheral Control  --------*/
        COMM_REG_MODE_CONTROL, 
        COMM_REG_CALIB_COMMAND,
        COMM_REG_ON_OFF_OUTPUT,
        COMM_REG_CLEAR_FAULTS,
        COMM_REG_ERASE_LOG,
        COMM_REG_SOFTWARE_RESET,
        COMM_REG_ENABLE_EXTRA_VMON_MONITOR,
        /*-------- Device output Control  --------*/
        COMM_REG_CHANNEL_ENABLE,
        COMM_REG_CHANNEL_SETPOINT_1,
        COMM_REG_CHANNEL_SETPOINT_2,
        COMM_REG_CHANNEL_SETPOINT_3,
        COMM_REG_CHANNEL_SETPOINT_4,
        COMM_REG_CHANNEL_SETPOINT_5,
        /*-------- Device Fault and Diagnostic  --------*/
        COMM_REG_WARN_FLAG_ACTIVE, 
        COMM_REG_MFR_WARN_FLAG_ACTIVE,
        COMM_REG_FAULT_FLAG_ACTIVE,
        COMM_REG_MFR_FAULT_FLAG_ACTIVE,
        COMM_REG_WARN_FLAG_LATCHED,
        COMM_REG_MFR_WARN_FLAG_LATCHED,
        COMM_REG_FAULT_FLAG_LATCHED,
        COMM_REG_MFR_FAULT_FLAG_LATCHED,
        COMM_REG_CYCLE_COUNT,
        COMM_REG_PON_TIME_HWORD,
        COMM_REG_PON_TIME_LWORD,
        COMM_REG_STATUS_CHANNEL_1,
        COMM_REG_STATUS_CHANNEL_2,
        COMM_REG_STATUS_CHANNEL_3,
        COMM_REG_STATUS_CHANNEL_4,
        COMM_REG_STATUS_CHANNEL_5,
        /*-------- Device Parametric Monitoring  --------*/
        COMM_REG_VOLTAGE_CHANNEL_1, 
        COMM_REG_VOLTAGE_CHANNEL_2,
        COMM_REG_VOLTAGE_CHANNEL_3,
        COMM_REG_VOLTAGE_CHANNEL_4,
        COMM_REG_VOLTAGE_CHANNEL_5,
        COMM_REG_CURRENT_CHANNEL_1,
        COMM_REG_CURRENT_CHANNEL_2,
        COMM_REG_CURRENT_CHANNEL_3,
        COMM_REG_CURRENT_CHANNEL_4,
        COMM_REG_CURRENT_CHANNEL_5,
        COMM_REG_TEMPERATURE_MONITOR,
        COMM_REG_BUCK_OUTPUT_VOLTAGE_1,
        COMM_REG_BUCK_OUTPUT_VOLTAGE_2,
        COMM_REG_BUCK_OUTPUT_VOLTAGE_3,
        COMM_REG_BUCK_OUTPUT_VOLTAGE_4,
        COMM_REG_BUCK_OUTPUT_VOLTAGE_5,
        COMM_REG_EXTRA_OUTPUT_VOLTAGE,
        COMM_REG_TOTAL_CURRENT_POS,
        COMM_REG_TOTAL_CURRENT_NEG,
        /*-------- Device RTC  --------*/
        COMM_REG_CLOCK_SEC, 
        COMM_REG_CLOCK_MIN,
        COMM_REG_CLOCK_HOUR,
        COMM_REG_CLOCK_DAY,
        COMM_REG_CLOCK_MONTH,
        COMM_REG_CLOCK_YEAR,
        /*-------- Manufacturing Control  --------*/
        //        COMM_REG_ENTER_CALIB_MODE_HWORD,         
        //        COMM_REG_ENTER_CALIB_MODE_LWORD,
        //        COMM_REG_ENTER_DISABLE_FAULTS_MODE_HWORD,
        //        COMM_REG_ENTER_DISABLE_FAULTS_MODE_LWORD,
        //        COMM_REG_ENTER_MFR_MODE_HWORD,
        //        COMM_REG_ENTER_MFR_MODE_LWORD,
        COMM_REG_ENTER_BOOT_MODE_HWORD,
        COMM_REG_ENTER_BOOT_MODE_LWORD,
        TOTAL_REGISTER_COUNT
    } REG_TABLE_INDX_E;

    typedef enum {
        /*-------- Device Properties --------*/
        MEM_INDX_DEVICE_ADDRESS, //1WORD
        MEM_INDX_FW_VERSION, //1WORD
        MEM_INDX_FW_VERSION_TEST, //1WORD
        //        MEM_INDX_MFR_MODEL0, //5Byte
        //        MEM_INDX_MFR_MODEL1, MEM_INDX_MFR_MODEL2,
        //        MEM_INDX_MFR_MODEL3, MEM_INDX_MFR_MODEL4,
        //        MEM_INDX_MFR_VERSION0, //5Byte
        //        MEM_INDX_MFR_VERSION1, MEM_INDX_MFR_VERSION2,
        //        MEM_INDX_MFR_VERSION3, MEM_INDX_MFR_VERSION4,
        //        MEM_INDX_MFR_DATE0, MEM_INDX_MFR_DATE1, //4WORD
        //        MEM_INDX_MFR_DATE2, MEM_INDX_MFR_DATE3,
        //        MEM_INDX_MFR_SERIAL, //1WORD                
        MEM_INDX_LOG_PAGE, //1WORD
        /*-------- Device Configuration  --------*/
        MEM_INDX_CONFIG_STORE_RESTORE,
        MEM_INDX_WARNING_FLAGS_MASK,
        MEM_INDX_FAULT_FLAGS_MASK,
        MEM_INDX_MFR_FAULT_FLAGS_MASK,
        MEM_INDX_MFR_WARNING_FLAGS_MASK,
        MEM_INDX_CHANNEL_MAX_CURRENT_1,
        MEM_INDX_CHANNEL_MAX_CURRENT_2,
        MEM_INDX_CHANNEL_MAX_CURRENT_3,
        MEM_INDX_CHANNEL_MAX_CURRENT_4,
        MEM_INDX_CHANNEL_MAX_CURRENT_5,
        /*-------- Device and peripheral Control  --------*/
        MEM_INDX_MODE_CONTROL,
        MEM_INDX_CALIB_COMMAND,
        MEM_INDX_ON_OFF_OUTPUT,
        MEM_INDX_CLEAR_FAULTS,
        MEM_INDX_ERASE_LOG,
        MEM_INDX_SOFTWARE_RESET,
        MEM_INDX_ENABLE_EXTRA_VMON_MONITOR,
        /*-------- Device output Control  --------*/
        MEM_INDX_CHANNEL_ENABLE,
        MEM_INDX_CHANNEL_SETPOINT_1,
        MEM_INDX_CHANNEL_SETPOINT_2,
        MEM_INDX_CHANNEL_SETPOINT_3,
        MEM_INDX_CHANNEL_SETPOINT_4,
        MEM_INDX_CHANNEL_SETPOINT_5,
        /*-------- Device Fault and Diagnostic  --------*/
        MEM_INDX_WARN_FLAG_ACTIVE,
        MEM_INDX_MFR_WARN_FLAG_ACTIVE,
        MEM_INDX_FAULT_FLAG_ACTIVE,
        MEM_INDX_MFR_FAULT_FLAG_ACTIVE,
        MEM_INDX_WARN_FLAG_LATCHED,
        MEM_INDX_MFR_WARN_FLAG_LATCHED,
        MEM_INDX_FAULT_FLAG_LATCHED,
        MEM_INDX_MFR_FAULT_FLAG_LATCHED,
        MEM_INDX_CYCLE_COUNT,
        MEM_INDX_PON_TIME_HWORD,
        MEM_INDX_PON_TIME_LWORD,
        MEM_INDX_STATUS_CHANNEL_1,
        MEM_INDX_STATUS_CHANNEL_2,
        MEM_INDX_STATUS_CHANNEL_3,
        MEM_INDX_STATUS_CHANNEL_4,
        MEM_INDX_STATUS_CHANNEL_5,
        /*-------- Device Parametric Monitoring  --------*/
        MEM_INDX_VOLTAGE_CHANNEL_1,
        MEM_INDX_VOLTAGE_CHANNEL_2,
        MEM_INDX_VOLTAGE_CHANNEL_3,
        MEM_INDX_VOLTAGE_CHANNEL_4,
        MEM_INDX_VOLTAGE_CHANNEL_5,
        MEM_INDX_CURRENT_CHANNEL_1,
        MEM_INDX_CURRENT_CHANNEL_2,
        MEM_INDX_CURRENT_CHANNEL_3,
        MEM_INDX_CURRENT_CHANNEL_4,
        MEM_INDX_CURRENT_CHANNEL_5,
        MEM_INDX_TEMPERATURE_MONITOR,
        MEM_INDX_BUCK_OUTPUT_VOLTAGE_1,
        MEM_INDX_BUCK_OUTPUT_VOLTAGE_2,
        MEM_INDX_BUCK_OUTPUT_VOLTAGE_3,
        MEM_INDX_BUCK_OUTPUT_VOLTAGE_4,
        MEM_INDX_BUCK_OUTPUT_VOLTAGE_5,
        MEM_INDX_EXTRA_OUTPUT_VOLTAGE,
        MEM_INDX_TOTAL_CURRENT_POS,
        MEM_INDX_TOTAL_CURRENT_NEG,
        /*-------- Device RTC  --------*/
        MEM_INDX_CLOCK_SEC,
        MEM_INDX_CLOCK_MIN,
        MEM_INDX_CLOCK_HOUR,
        MEM_INDX_CLOCK_DAY,
        MEM_INDX_CLOCK_MONTH,
        MEM_INDX_CLOCK_YEAR,
        /*-------- Manufacturing Control  --------*/
        //        MEM_INDX_ENTER_CALIB_MODE_HWORD,
        //        MEM_INDX_ENTER_CALIB_MODE_LWORD,
        //        MEM_INDX_ENTER_DISABLE_FAULTS_MODE_HWORD,
        //        MEM_INDX_ENTER_DISABLE_FAULTS_MODE_LWORD,
        //        MEM_INDX_ENTER_MFR_MODE_HWORD,
        //        MEM_INDX_ENTER_MFR_MODE_LWORD,
        MEM_INDX_ENTER_BOOT_MODE_HWORD,
        MEM_INDX_ENTER_BOOT_MODE_LWORD,
        //...........................
        TOTAL_REGISTER_MEM_SIZE
    } REG_MEM_INDEX_TABLE;

    /**
     * @brief Register read/write handler typedef
     * @param data_buff for write, data written; for read, storage to put data
     * @param value_buff value buffer where reg data is saved; on read - data can be retrieved here; on write - data must be placed here
     * @param data_buf_idx index of register data buffer to write to/read from
     * @param is_read true: operation is read; false: operation is write
     * @retval operation result error code
     */
    typedef int (*reg_handler_t)(
            REG_TABLE_INDX_E reg_table_index,
            uint16_t *reg_data_buff,
            bool is_read);

    /**
     * @brief Enum for Register Access Types
     */
    typedef enum {
        REG_ACCESS_RD = 0x01, /**< Read access type */
        REG_ACCESS_WR = 0x02, /**< Write access type */
        REG_ACCESS_RW = (REG_ACCESS_RD | REG_ACCESS_WR), /**< Read and Write access type */
    } REG_ACESS_TYPE_E;

    /**
     * @brief Enum for Device Names
     */
    typedef enum {
        DEVICE_0, /**< Device 0 */
        DEVICE_1, /**< Device 1 */
        TOTAL_DEVICES /**< Total number of devices */
    } DEVICE_NAME_E;

    /**
     * @brief Struct for Register Information
     */
    typedef struct {
        uint16_t startAddress; /**< Starting address */
        uint8_t word_count; /**< Number of consecutive words */
        REG_TABLE_INDX_E reg_table_index; /**< Starting buffer index */
        REG_ACESS_TYPE_E accessType; /**< Access type of the register */
        uint16_t* reg_val_buff_ptr[TOTAL_DEVICES]; /**< Array of pointers to register value buffers */
        reg_handler_t handler_functionPtr; /**< Pointer to handler function */
    } REG_INFO_T;

    /**
     * @brief Gets a pointer to the register info for the given table index
     * @param inputTableIndex Index of the register in the table
     * @return Pointer to the register info
     */
    REG_INFO_T* Get_PointerRegisterInfo(REG_TABLE_INDX_E inputTableIndex);

    /**
     * @brief Gets the index of a register from the table
     * @param registerAddress Address of the register
     * @return Index of the register in the table
     */
    int Get_RegIndexFromTable(uint16_t registerAddress);

    /**
     * @brief Gets the word count of a register from the table
     * @param inputTableIndex Index of the register in the table
     * @return Word count of the register
     */
    int Get_RegisterWordCount(REG_TABLE_INDX_E inputTableIndex);

    /**
     * @brief Gets the access type of a register from the table
     * @param inputTableIndex Index of the register in the table
     * @return Access type of the register
     */
    REG_ACESS_TYPE_E Get_RegisterAccessType(REG_TABLE_INDX_E inputTableIndex);

    /**
     * @brief Gets the value of a single register for a specific device
     * @param inputTableIndex Index of the register in the table
     * @param deviceName Name of the device
     * @return Value of the register
     */
    uint32_t Get_SingleRegisterVal(REG_TABLE_INDX_E inputTableIndex, DEVICE_NAME_E deviceName);

    /**
     * @brief Sets the value of a single register for a specific device
     * @param registerVal Value to be set to the register
     * @param inputTableIndex Index of the register in the table
     * @param deviceName Name of the device
     */
    void Set_SingleRegisterVal(uint32_t registerVal, REG_TABLE_INDX_E inputTableIndex, DEVICE_NAME_E deviceName);


#ifdef	__cplusplus
}
#endif

#endif	/* REGISTERS_MAP_H */

