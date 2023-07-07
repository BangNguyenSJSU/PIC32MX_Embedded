/* 
 * File:   SPI_COMM_INTERFACE.h
 * Author: bang.nguyen
 *
 * Created on April 25, 2023, 9:56 PM
 */

#ifndef SPI_COMM_INTERFACE_H
#define	SPI_COMM_INTERFACE_H


#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include "../../USER_HELPER/INTERNAL_REGISTERS_MAP.h"



#ifdef	__cplusplus
extern "C" {
#endif

    /******************************************
     * @brief Generic operation status
     ******************************************/
    typedef enum {
        OP_STATUS_NOT_INIT = 0, /*!< Device is uninitialized */
        OP_STATUS_IDLE, /*!< Device is idle, default state from init */
        OP_STATUS_BUSY, /*!< Operation ongoing */
        OP_STATUS_SUCCESS, /*!< Last operation is successful, device is idle  */
        OP_STATUS_ERROR, /*!< Error occurred, device is idle */
    } op_status_t;

    /**********************************************************
     * @brief Communications interface function code definition
     ************************************************************/
    typedef enum {
        COMMSINTERFACE_FUNC_CODE_SINGLE_READ = 0x01,
        COMMSINTERFACE_FUNC_CODE_SINGLE_READ_RESPOND = 0x41,
        COMMSINTERFACE_FUNC_CODE_SINGLE_READ_ERROR_RESPOND = 0x81,
        COMMSINTERFACE_FUNC_CODE_SINGLE_WRITE = 0x02,
        COMMSINTERFACE_FUNC_CODE_SINGLE_WRITE_RESPOND = 0x42,
        COMMSINTERFACE_FUNC_CODE_SINGLE_WRITE_ERROR_RESPOND = 0x82,
        COMMSINTERFACE_FUNC_CODE_MULTIPLE_READ = 0x03,
        COMMSINTERFACE_FUNC_CODE_MULTIPLE_READ_RESPOND = 0x43,
        COMMSINTERFACE_FUNC_CODE_MULTIPLE_READ_ERROR_RESPOND = 0x83,
        COMMSINTERFACE_FUNC_CODE_MULTIPLE_WRITE = 0x04,
        COMMSINTERFACE_FUNC_CODE_MULTIPLE_WRITE_RESPOND = 0x44,
        COMMSINTERFACE_FUNC_CODE_MULTIPLE_WRITE_ERROR_RESPOND = 0x84,
    } commsinterface_func_code_t;

    /**********************************************************
     * @brief Communications interface error status definition
     **********************************************************/
    typedef enum {
        COMMSINTERFACE_ERROR_CODE_NO_ERROR = 0x00, /*!< No error has occurred                              */
        COMMSINTERFACE_ERROR_CODE_INVALID_FUNCTION = 0x01, /*!< Invalid or unsupported function code or parameters */
        COMMSINTERFACE_ERROR_CODE_INVALID_REG_ADDR = 0x02, /*!< Invalid register address has been received         */
        COMMSINTERFACE_ERROR_CODE_INVALID_REG_VALUE = 0x03, /*!< Invalid register value has been received           */
        COMMSINTERFACE_ERROR_CODE_INTERNAL_ERROR = 0xFF /*!< An internal or unexpected error has occurred       */
    } commsinterface_error_code_t;

    /**********************************************************
     * @brief Communications interface MessageByteIndex (single Packet)
     **********************************************************/
    typedef enum {
        START_FLAG_FRAME_INDEX = 0,
        DEVICE_ADDR_FRAME_INDEX = 1,
        MESS_ID_FRAME_INDEX = 2,
        MESS_LEN_FRAME_INDEX = 3,
        FUNC_CODE_FRAME_INDEX = 4,
        REG_ADDRESS_LSB_INDEX = 5,
        REG_ADDRESS_MSB_INDEX = 6,
        REG_VALUE_LSB_INDEX = 7,
        REG_VALUE_MSB_INDEX = 5,
        CS_FLETCHER16_LSB_INDEX = 9,
        CS_FLETCHER16_MSB_INDEX = 10,
        TOTAL_SINGLE_PACKET_FRAME = 11,
    } commsinterface_single_packet_frame;

    /**
     * @brief Communications interface max packet size
     */
#define COMMSINTERFACE_PACKET_MAX_SIZE              (260U)
#define COMMSINTERFACE_SINGLE_PACKET_MAX_SIZE       (11U)
#define COMMSINTERFACE_SINGLE_64_PACKETS_MAX_SIZE   (136U) /*!< 4bytes_HEADER + (4+2*RegCount)_DATA */
#define COMMSINTERFACE_PACKET_HEADER_SIZE           (4U)


    /**
     * @brief Communications interface address minimum value allowed
     */
#define COMMSINTERFACE_ADDR_MIN                 (1)


    /**
     * @brief Communications interface address maximum value allowed
     */
#define COMMSINTERFACE_ADDR_MAX                 (247)

    /**
     * @brief Communications interface register data type
     */
    typedef uint16_t commsinterface_reg_data_t;

    /**
     * @brief Forward declaration of comms interface handler to allow it to be used for definitions
     */
    typedef struct commsinterface_handle_t commsinterface_handle_t;

    /**
     * @brief   Communications interface packet transmit handler function definition
     * @param   p_handle Comms interface handler calling the handler function
     * @param   p_data_request Data buffer to transmit
     * @param   length Data count
     * @retval  Operation result
     */
    typedef op_status_t(*commsinterface_transmit_packet_fxn_t)(commsinterface_handle_t *p_handle, uint8_t *p_data_request, size_t length);

    /**
     * @brief   This function receives data from multiple registers.
     * @param   p_handle A pointer to the communication interface handle.
     * @param   reg_addr The starting address of the registers from which data is to be received.
     * @param   p_data_respond A pointer to the buffer where the received data is to be stored.
     * @param   byte_count The number of bytes to be received.
     * @retval  Returns an error code based on the success of the operation.
     */
    typedef commsinterface_error_code_t(*commsinterface_receive_multi_reg_fxn_t)(commsinterface_handle_t *p_handle, uint16_t reg_addr, uint8_t*p_data_respond, size_t byte_count);

    /**
     * @brief   This function receives data from a single register.
     * @param   p_handle A pointer to the communication interface handle.
     * @param   reg_addr The address of the register from which data is to be received.
     * @param   p_data_respond A pointer to the buffer where the received data is to be stored.
     * @param   byte_count The number of bytes to be received. Should typically be the size of one register.
     * @retval  Returns an error code based on the success of the operation.
     * @note    It's intended for reading a single register. For multiple registers, use the commsinterface_receive_multi_reg_fxn_t function.
     */
    typedef commsinterface_error_code_t(*commsinterface_receive_single_reg_fxn_t)(commsinterface_handle_t *p_handle, uint16_t reg_addr, uint8_t*p_data_respond, size_t byte_count);

        /**
     * @brief Struct representing the header part of a message.
     */
    typedef struct __attribute__((packed)) {
        uint8_t _start_flag; /*!< Flag to indicate the start of a message */
        uint8_t _dev_address; /*!< The device address */
        uint8_t _mess_ID; /*!< The ID of the message */
        uint8_t _mess_len; /*!< The length of the message */
    }
    commsinterface_mess_header_t;

    /**
     * @brief Struct representing the data part of a message.
     */
    typedef struct __attribute__((packed)) {
        uint8_t _func_code; /*!< The function code */
        uint16_t _reg_addr; /*!< The register address */
        uint16_t _reg_value; /*!< The value of the register */
    }
    commsinterface_mess_data_t;

    /**
     * @brief Struct representing a complete message.
     */
    typedef struct __attribute__((packed)) {
        commsinterface_mess_header_t header; /*!< Header part of the message */
        commsinterface_mess_data_t data; /*!< Data part of the message */
        uint16_t CheckSum_Fletcher16; /*!< CheckSum for total mess_header and mess_data */
    }
    commsinterface_message_t;

    /**
     * @brief Union to allow treating a message as a struct or as an array.
     */
    typedef union {
        commsinterface_message_t messagePacket; /*!< Structure representation of the message */
        uint8_t messFrameArray[sizeof (commsinterface_message_t)]; /*!< Array of the message frame */
    } commsinterface_message_data_u;

    /**
     * @brief Struct representing the configuration for the communications interface.
     */
    typedef struct {
        uint8_t device_address; /*!< Specifies the assigned device address for the instance  */
        commsinterface_transmit_packet_fxn_t transmit_packet_fxn; /*!< Function pointer to the data transmit handler function  */
        commsinterface_receive_multi_reg_fxn_t receive_multi_reg_respond_fxn; /*!< Function pointer to the multi register  handler function  */
        commsinterface_receive_single_reg_fxn_t receive_single_reg_respond_fxn; /*!< Function pointer to the single register handler function */
    } commsinterface_cfg_t;

    /**
     * @brief Struct representing a handle to the communications interface.
     */
    struct commsinterface_handle_t {
        commsinterface_cfg_t _cfg; /*!< The configuration for this instance */
        REG_INFO_T* _reg_info_ptr; /*!< Pointer to register info */
        commsinterface_message_data_u tx_message; /*!< Outgoing message  */
        commsinterface_message_data_u rx_message; /*!< Incoming message  */
        uint8_t _tx_buffer[COMMSINTERFACE_SINGLE_PACKET_MAX_SIZE]; /*!< Transmission buffer */
        uint8_t _rx_buffer[COMMSINTERFACE_SINGLE_PACKET_MAX_SIZE]; /*!< Reception buffer */
        uint8_t _tx_multi_reg_buffer[COMMSINTERFACE_SINGLE_64_PACKETS_MAX_SIZE]; /*!< Transmission buffer for multiple registers */
        uint16_t _rx_reg_data_buf[2]; /*!< Buffer for received register data */
        uint16_t _tx_reg_data_buf[2]; /*!< Buffer for register data to be sent */
        bool _is_init; /*!< Initialization status */
    };


    /*_____________________________________________________________________________*/
    /**
     * @brief   Initializes the communications interface
     * @param   p_commsinterface Pointer to the communications interface instance handle
     * @param   p_config Pointer to the configuration structure for the instance
     * @retval  Operation result
     */
    op_status_t CommSPI_Init(commsinterface_handle_t *p_commsinterface, const commsinterface_cfg_t *p_config);

    /*______________________________________________________________________________*/
    /**
     * @brief   Deinitializes the communications interface
     * @param   p_commsinterface Pointer to the communications interface instance handle
     * @retval  Operation result
     */
    op_status_t CommSPI_DeInit(commsinterface_handle_t *p_commsinterface);

    /*______________________________________________________________________________*/
    /**
     * @brief   Sets up a new packet for the communications interface
     * @param   p_commsinterface Pointer to the communications interface instance handle
     * @param   p_config Pointer to the configuration structure for the instance
     * @param   device_address Address of the device for which the packet is being set up
     * @retval  Operation result, OP_STATUS_SUCCESS if successful
     */
    op_status_t CommSPI_SetupNewPacket(commsinterface_handle_t *p_commsinterface, commsinterface_cfg_t *p_config, uint8_t device_address);

    /*__________________________SINGLE_PACKET___OPERATION__________________________*/
    /**
     * @brief   Processes a single packet for transmission
     * @param   p_commsinterface Pointer to the communications interface instance handle
     * @param   messID ID for the message being transmitted
     * @param   regAddress Register address to be written or read
     * @param   regVal Register value to be written
     * @param   functionCode Communications interface function code
     * @retval  Operation result, OP_STATUS_SUCCESS if successful
     */
    op_status_t CommSPI_ProcessTransmitSinglePacket(commsinterface_handle_t *p_commsinterface, uint8_t messID, uint16_t regAddress, uint16_t regVal, commsinterface_func_code_t functionCode);

    /*__________________________SINGLE_PACKET___OPERATION__________________________*/
    /**
     * @brief   Processes a single packet for reception
     * @param   p_commsinterface Pointer to the communications interface instance handle
     * @param   regAddress Register address to be read
     * @param   regData Pointer to the location where the read register value should be stored
     * @param   functionCode Communications interface function code
     * @retval  Operation result, OP_STATUS_SUCCESS if successful
     */
    op_status_t CommSPI_ProcessReceiveSinglePacket(commsinterface_handle_t *p_commsinterface, uint16_t regAddress, uint16_t* regData, commsinterface_func_code_t functionCode);

    /*_________________________MULTI_PACKETS___OPERATION___________________________*/
    /**
     * @brief   Processes multiple packets for transmission
     * @param   p_commsinterface Pointer to the communications interface instance handle
     * @param   messID ID for the message being transmitted
     * @param   regStartAddress Starting register address to be written
     * @param   regValArray Array of register values to be written
     * @param   regCount Number of registers to process
     * @param   functionCode Communications interface function code
     * @retval  Operation result, OP_STATUS_SUCCESS if successful
     */
    op_status_t CommSPI_ProcessTransmitMultiPacket(commsinterface_handle_t *p_commsinterface, uint8_t messID, uint16_t regStartAddress, uint16_t* regValArray, size_t regCount, commsinterface_func_code_t functionCode);

    /*__________________________MULTI_PACKETS___OPERATION__________________________*/
    /**
     * @brief   Processes multiple packets for reception
     * @param   p_commsinterface Pointer to the communications interface instance handle
     * @param   regStartAddress Starting register address to be read
     * @param   regData Pointer to the array where the read register values should be stored
     * @param   regCount Number of registers to read
     * @param   functionCode Communications interface function code
     * @retval  Operation result, OP_STATUS_SUCCESS if successful
     */
    op_status_t CommSPI_ProcessReceiveMultiPacket(commsinterface_handle_t *p_commsinterface, uint16_t regStartAddress, uint16_t* regData, size_t regCount, commsinterface_func_code_t functionCode);

    /*_________________________________________________________________________*/
    /**
     * @brief   Calculates the Fletcher-16 checksum of a data buffer
     * @param   p_data Pointer to the data buffer
     * @param   data_len Length of the data buffer in bytes
     * @retval  The calculated Fletcher-16 checksum value
     * @note    This function implements the Fletcher-16 algorithm for generating a checksum. The algorithm splits the data into 8-bit values and accumulates them in two 8-bit variables, sum1 and sum2, which are added together to obtain the final checksum.
     */
    uint16_t CommSPI_GetFletcher16(uint8_t *p_data, size_t data_len);



#ifdef	__cplusplus
}
#endif

#endif	/* SPI_COMM_INTERFACE_H */

