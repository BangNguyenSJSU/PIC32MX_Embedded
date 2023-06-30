
#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "SPI_COMM_INTERFACE.h" 
#include "SPI.h"
#include "../../USER_HELPER/HELPER_FUNCTION.h"



/** @defgroup CommsInterface_private_defines Comms interface private variables
 * and definitions
 * @{
 */

#define FRAME_START_FLAG_VAL (0x7E)
#define FRAME_BROADCAST_ADDR (0)
#define FRAME_RESERVED_ADDR_START (248)

#define FRAME_INDEX_START_FLAG (0)
#define FRAME_INDEX_DEVICE_ADDR (1)
#define FRAME_INDEX_MESSAGE_ID (2)
#define FRAME_INDEX_MESSAGE_LEN (3)
#define FRAME_INDEX_MESSAGE_DATA (4)

#define FRAME_MIN_LEN                                           \
  ((FRAME_INDEX_MESSAGE_DATA) + 2)


/*---------------------------------------------------------------------------*/
///////////////////// STATIC FUCNTION (Declaration)    ////////////////////////
/*---------------------------------------------------------------------------*/
static bool CommSPI_IsDeviceAddressValid(uint8_t device_address);
static bool commsinterface_ValidateRxFrame(uint8_t *p_data, size_t length, uint8_t device_address);
static void CommSPI_ConfigurateNewPacket(commsinterface_cfg_t *p_config, uint8_t device_address);
static op_status_t CommSPI_SetDeviceAddress(commsinterface_handle_t *p_commsinterface, uint8_t device_address);
static commsinterface_error_code_t CommSPI_Handler_MultiPacketRespond(commsinterface_handle_t *p_handle, uint16_t reg_addr, uint8_t *p_data_respond, size_t byte_count);

/* -------------- Function Pointer Handler -------------- */
static commsinterface_error_code_t CommSPI_Handler_MultiPacketRespond(commsinterface_handle_t *p_handle, uint16_t reg_addr, uint8_t *p_data_respond, size_t byte_count);
static commsinterface_error_code_t CommSPI_Handler_SinglePacketRespond(commsinterface_handle_t *p_handle, uint16_t reg_addr, uint8_t *p_data_respond, size_t byte_count);
static op_status_t CommSPI_Handler_TransmitPacketRequest(commsinterface_handle_t *p_handle, uint8_t *p_data_request, size_t length);

/*---------------------------------------------------------------------------*/
///////////////////// STATIC FUCNTION (Definition)    ////////////////////////

/*---------------------------------------------------------------------------*/
static bool
CommSPI_IsDeviceAddressValid(uint8_t device_address) {
    bool is_valid = false;
    if ((device_address != FRAME_BROADCAST_ADDR) &&
            (device_address < FRAME_RESERVED_ADDR_START)) {
        is_valid = true;
    } else {
        is_valid = false;
    }
    return is_valid;
}

static bool
commsinterface_ValidateRxFrame(uint8_t *p_data, size_t length,
        uint8_t device_address) {
    uint16_t checksum_recv;
    uint16_t checksum_calc;
    uint8_t start_flag = p_data[FRAME_INDEX_START_FLAG];
    uint8_t device_addr = p_data[FRAME_INDEX_DEVICE_ADDR];
    uint8_t message_len = p_data[FRAME_INDEX_MESSAGE_LEN];
    uint8_t frame_len = (message_len + 4); // message_len + header 


    bool is_valid = false;

    if ((length >= FRAME_MIN_LEN) && (length >= frame_len) &&
            (FRAME_START_FLAG_VAL == start_flag) &&
            ((FRAME_BROADCAST_ADDR == device_addr) ||
            (device_addr == device_address))) {
        /* LOW-BYTE go first */
        convert_uint8_to_uint16(&checksum_recv, p_data[frame_len + 1], p_data[frame_len]);
        checksum_calc = CommSPI_GetFletcher16(&p_data[0], (frame_len)); // Need Verify (*)

        if (checksum_calc == checksum_recv) {
            is_valid = true;
            // return is_valid;
        } else {
            is_valid = false;
            // return is_valid;
        }
    }
    return is_valid;
}

static void
CommSPI_ConfigurateNewPacket(commsinterface_cfg_t *p_config, uint8_t device_address) {
    p_config->device_address = device_address;
    /* Mapping Handler_FUNCTION */
    p_config->receive_multi_reg_respond_fxn = CommSPI_Handler_MultiPacketRespond;
    p_config->receive_single_reg_respond_fxn = CommSPI_Handler_SinglePacketRespond;
    p_config->transmit_packet_fxn = CommSPI_Handler_TransmitPacketRequest;
}

static op_status_t
CommSPI_SetDeviceAddress(commsinterface_handle_t *p_commsinterface,
        uint8_t device_address) {
    if ((p_commsinterface != NULL) && (!p_commsinterface->_is_init) &&
            CommSPI_IsDeviceAddressValid(device_address)) {
        p_commsinterface->_cfg.device_address = device_address;
        return OP_STATUS_SUCCESS;
    } else {
        return OP_STATUS_ERROR;
    }
}

static int
comsinterface_ProcessMultiWriteMessData(uint16_t startingRegisterAddress, uint16_t* registerValueArray, uint8_t registerCount, uint8_t* transmitArrayByte, size_t transmitSize) {
    // Check for null pointers
    if (registerValueArray == NULL || transmitArrayByte == NULL) {
        return -1;
    }

    // Ensure transmitArrayByte is large enough
    if (transmitSize < ((registerCount * 2) + 4)) {
        return -1;
    }

    // reverse the byte for transmit.....-->....|LSB|MSB|

    // Set the function code
    transmitArrayByte[0] = COMMSINTERFACE_FUNC_CODE_MULTIPLE_WRITE;
    startingRegisterAddress = REVERSE_16BIT(startingRegisterAddress);

    // Set the starting register address
    transmitArrayByte[1] = (startingRegisterAddress >> 8) & 0xFF; // High byte
    transmitArrayByte[2] = startingRegisterAddress & 0xFF; // Low byte

    // Set the register count
    transmitArrayByte[3] = registerCount;

    // Copy register values to the transmit array
    for (size_t i = 0; i < registerCount; i++) {
        registerValueArray[i] = REVERSE_16BIT(registerValueArray[i]);
        transmitArrayByte[4 + (i * 2)] = (registerValueArray[i] >> 8) & 0xFF; // High byte
        transmitArrayByte[5 + (i * 2)] = registerValueArray[i] & 0xFF; // Low byte
    }
    return (registerCount * 2) + 4;
}

/* -------------- Function Pointer Handler -------------- */
static commsinterface_error_code_t
CommSPI_Handler_MultiPacketRespond(commsinterface_handle_t *p_handle, uint16_t reg_addr, uint8_t *p_data_respond, size_t byte_count) {
    commsinterface_error_code_t errorCode;
    uint8_t dumyTransmit = 0xFF;
    if (byte_count > COMMSINTERFACE_SINGLE_PACKET_MAX_SIZE) {
        errorCode = COMMSINTERFACE_ERROR_CODE_INTERNAL_ERROR;
    } else {
        SPI1_TransferMultiBytes(&dumyTransmit, p_data_respond, byte_count); // SPI Read 
        errorCode = COMMSINTERFACE_ERROR_CODE_NO_ERROR;
    }
    return errorCode;
}

static commsinterface_error_code_t
CommSPI_Handler_SinglePacketRespond(commsinterface_handle_t *p_handle, uint16_t reg_addr, uint8_t *p_data_respond, size_t byte_count) {
    commsinterface_error_code_t errorCode;
    uint8_t dumyTransmit = 0xFF;
    if (byte_count > COMMSINTERFACE_SINGLE_PACKET_MAX_SIZE) {
        errorCode = COMMSINTERFACE_ERROR_CODE_INTERNAL_ERROR;
    } else {
        SPI1_TransferMultiBytes(&dumyTransmit, p_data_respond, byte_count); // SPI Read 
        errorCode = COMMSINTERFACE_ERROR_CODE_NO_ERROR;
    }
    return errorCode;
}

static op_status_t
CommSPI_Handler_TransmitPacketRequest(commsinterface_handle_t *p_handle, uint8_t *p_data_request, size_t length) {
    /* SPI Driver*/
    SPI1_TransferMultiBytes(p_data_request, NULL, length); // WRITE_ONLY
    return OP_STATUS_SUCCESS;
}

/*******************************************************************************
 * @brief   
 ******************************************************************************/
op_status_t
CommSPI_Init(commsinterface_handle_t *p_commsinterface,
        const commsinterface_cfg_t *p_config) {
    if ((p_commsinterface != NULL) && (p_config != NULL) &&
            CommSPI_IsDeviceAddressValid(p_config->device_address) &&
            (p_config->transmit_packet_fxn != NULL) &&
            (p_config->receive_multi_reg_respond_fxn != NULL) &&
            (p_config->receive_single_reg_respond_fxn != NULL)) {
        p_commsinterface->_cfg = *p_config;
        p_commsinterface->_is_init = true;
        return OP_STATUS_SUCCESS;
    } else {
        return OP_STATUS_ERROR;
    }
}

/********************************************************************************
 * @brief   
 *******************************************************************************/
op_status_t
CommSPI_DeInit(commsinterface_handle_t *p_commsinterface) {
    if (p_commsinterface != NULL) {
        p_commsinterface->_is_init = false;
        return OP_STATUS_SUCCESS;
    } else {
        return OP_STATUS_ERROR;
    }
}

/********************************************************************************
 * @brief   
 *******************************************************************************/
op_status_t
CommSPI_SetupNewPacket(commsinterface_handle_t *p_commsinterface, commsinterface_cfg_t *p_config, uint8_t device_address) {

    CommSPI_ConfigurateNewPacket(p_config, device_address);
    op_status_t isDevAddressOK = CommSPI_SetDeviceAddress(p_commsinterface, p_config->device_address);
    op_status_t isPacketInitOK = CommSPI_Init(p_commsinterface, p_config);

    return (isDevAddressOK && isPacketInitOK) ? OP_STATUS_SUCCESS : OP_STATUS_ERROR;
}

/********************************************************************************
 * @brief   
 *******************************************************************************/
#define SINGLE_READ_LEN 3
#define SINGLE_WRITE_LEN 5
#define SINGLE_READ_CS_LEN 7
#define SINGLE_WRITE_CS_LEN 9
#define SINGLE_PACKET_WITHOUT_REG_VALUE 2

op_status_t
CommSPI_ProcessTransmitSinglePacket(commsinterface_handle_t *p_commsinterface, uint8_t messID, uint16_t regAddress, uint16_t regVal, commsinterface_func_code_t functionCode) {
    if (p_commsinterface == NULL) {
        return OP_STATUS_ERROR;
    }
    // Setup the header part of the message
    p_commsinterface->tx_message.messagePacket.header._start_flag = FRAME_START_FLAG_VAL;
    p_commsinterface->tx_message.messagePacket.header._dev_address = p_commsinterface->_cfg.device_address;
    p_commsinterface->tx_message.messagePacket.header._mess_ID = messID;

    // Variable to hold the total byte count for data transmission
    size_t TotalDataTransmitByte = 0;

    // Process the message based on the function code
    // Single read and write operations have different message lengths and checksum lengths
    switch (functionCode) {
        case COMMSINTERFACE_FUNC_CODE_SINGLE_READ:
            // Message length for single read operation is 3 (function code + register address)
            p_commsinterface->tx_message.messagePacket.header._mess_len = SINGLE_READ_LEN;
            p_commsinterface->tx_message.messagePacket.data._func_code = COMMSINTERFACE_FUNC_CODE_SINGLE_READ;
            p_commsinterface->tx_message.messagePacket.data._reg_addr = regAddress;
            // Calculate checksum for 7 bytes (from start_flag to register address)
            p_commsinterface->tx_message.messagePacket.CheckSum_Fletcher16 = (CommSPI_GetFletcher16(&p_commsinterface->tx_message.messFrameArray[START_FLAG_FRAME_INDEX], SINGLE_READ_CS_LEN));
            memcpy(&p_commsinterface->_tx_buffer[START_FLAG_FRAME_INDEX], &p_commsinterface->tx_message.messFrameArray[START_FLAG_FRAME_INDEX], 7);
            memcpy(&p_commsinterface->_tx_buffer[REG_ADDRESS_MSB_INDEX + 1], &p_commsinterface->tx_message.messFrameArray[CS_FLETCHER16_LSB_INDEX], 2);
            TotalDataTransmitByte = TOTAL_SINGLE_PACKET_FRAME - SINGLE_PACKET_WITHOUT_REG_VALUE;
            p_commsinterface->_cfg.transmit_packet_fxn(p_commsinterface, p_commsinterface->_tx_buffer, TotalDataTransmitByte);
            return OP_STATUS_SUCCESS;
            //break;

        case COMMSINTERFACE_FUNC_CODE_SINGLE_WRITE:
            // Message length for single write operation is 5 (function code + register address + register value)
            p_commsinterface->tx_message.messagePacket.header._mess_len = SINGLE_WRITE_LEN; /* func_code + reg_addr + reg_value */
            p_commsinterface->tx_message.messagePacket.data._func_code = COMMSINTERFACE_FUNC_CODE_SINGLE_WRITE;
            p_commsinterface->tx_message.messagePacket.data._reg_addr = regAddress;
            p_commsinterface->tx_message.messagePacket.data._reg_value = regVal;
            // Calculate checksum for 9 bytes (from start_flag to register value)
            p_commsinterface->tx_message.messagePacket.CheckSum_Fletcher16 = (CommSPI_GetFletcher16(&p_commsinterface->tx_message.messFrameArray[START_FLAG_FRAME_INDEX], SINGLE_WRITE_CS_LEN));
            memcpy(&p_commsinterface->_tx_buffer[START_FLAG_FRAME_INDEX], &p_commsinterface->tx_message.messFrameArray[START_FLAG_FRAME_INDEX], TOTAL_SINGLE_PACKET_FRAME);
            TotalDataTransmitByte = TOTAL_SINGLE_PACKET_FRAME;
            p_commsinterface->_cfg.transmit_packet_fxn(p_commsinterface, p_commsinterface->_tx_buffer, TotalDataTransmitByte);
            return OP_STATUS_SUCCESS;
            //break;
        default:
            // Unrecognized function code
            return OP_STATUS_ERROR;
    }

    return OP_STATUS_ERROR;
}

/********************************************************************************
 * @brief   
 *******************************************************************************/
#define VALID_MESSAGE_LEN_SINGLE_RW 0x05
#define ERROR_CODE_INDEX  6U

op_status_t
CommSPI_ProcessReceiveSinglePacket(commsinterface_handle_t *p_commsinterface, uint16_t regAddress, uint16_t* regData, commsinterface_func_code_t functionCode) {
    op_status_t errorCode = OP_STATUS_ERROR;
    bool validMessLen = false;
    bool validFuncCode = false;
    bool validRegAddrss = false;
    bool validRegValWriten = false;

    /* Checking function parameter */
    if ((p_commsinterface == NULL) || (regData == NULL)) {
        return OP_STATUS_ERROR;
    }

    /* Parsing RX buffer */
    p_commsinterface->_cfg.receive_single_reg_respond_fxn(p_commsinterface, regAddress, p_commsinterface->_rx_buffer, COMMSINTERFACE_SINGLE_PACKET_MAX_SIZE);
    bool valid_CS = commsinterface_ValidateRxFrame(&p_commsinterface->_rx_buffer[0], COMMSINTERFACE_SINGLE_PACKET_MAX_SIZE, p_commsinterface->_cfg.device_address);
    /* Pad byte into union array */
    memcpy(&p_commsinterface->rx_message.messFrameArray[START_FLAG_FRAME_INDEX], &p_commsinterface->_rx_buffer[START_FLAG_FRAME_INDEX], TOTAL_SINGLE_PACKET_FRAME);
    uint8_t devAddrss_receive = p_commsinterface->rx_message.messagePacket.header._dev_address;
    uint8_t messID_receive = p_commsinterface->rx_message.messagePacket.header._mess_ID;
    uint8_t messLen_receive = p_commsinterface->rx_message.messagePacket.header._mess_len;
    uint8_t opCode_receive = p_commsinterface->rx_message.messagePacket.data._func_code;
    uint16_t regAdd_receive = p_commsinterface->rx_message.messagePacket.data._reg_addr;
    uint16_t regVal_receive = p_commsinterface->rx_message.messagePacket.data._reg_value;

    /* Checking return Error OP-CODE */
    if ((opCode_receive == COMMSINTERFACE_FUNC_CODE_SINGLE_READ_ERROR_RESPOND) ||
            (opCode_receive == COMMSINTERFACE_FUNC_CODE_SINGLE_WRITE_ERROR_RESPOND)) {
        *regData = p_commsinterface->_rx_buffer[ERROR_CODE_INDEX];
        return OP_STATUS_ERROR;
    }

    /* Common checks for read and write responses */
    validMessLen = (messLen_receive == VALID_MESSAGE_LEN_SINGLE_RW);
    validFuncCode = (opCode_receive == functionCode);
    validRegAddrss = (regAdd_receive == regAddress);

    /* If not error OP CODE then Verify  */
    switch (functionCode) {
        case COMMSINTERFACE_FUNC_CODE_SINGLE_READ_RESPOND:
            if (valid_CS && validMessLen && validFuncCode && validRegAddrss) {
                *regData = regVal_receive;
                errorCode = OP_STATUS_SUCCESS;
            }
            break;

        case COMMSINTERFACE_FUNC_CODE_SINGLE_WRITE_RESPOND:
            validRegValWriten = (regVal_receive == *(regData));
            if (valid_CS && validMessLen && validFuncCode && validRegAddrss && validRegValWriten) {
                errorCode = OP_STATUS_SUCCESS;
            }
            break;

        default:
            errorCode = OP_STATUS_ERROR;
            break;
    }
    return errorCode;
}

/********************************************************************************
 * @brief   
 *******************************************************************************/
#define MAX_REG_COUNT 64U
#define CHECKSUM_SIZE 2U
#define opCODE_1_regADDRESS_2_regCOUNT_1 4U
#define REG_SIZE_2BYTE 2U

op_status_t
CommSPI_ProcessTransmitMultiPacket(commsinterface_handle_t *p_commsinterface, uint8_t messID, uint16_t regStartAddress, uint16_t* regValArray, size_t regCount, commsinterface_func_code_t functionCode) {
    if ((p_commsinterface == NULL) || (regValArray == NULL)) {
        return OP_STATUS_ERROR;
    }
    if (regCount > MAX_REG_COUNT) {
        return OP_STATUS_ERROR;
    }
    if (functionCode != COMMSINTERFACE_FUNC_CODE_MULTIPLE_WRITE) {
        return OP_STATUS_ERROR;
    }

    // Reset buffer 
    memset(p_commsinterface->_tx_multi_reg_buffer, 0, COMMSINTERFACE_SINGLE_64_PACKETS_MAX_SIZE);

    // Setup the message HEADER
    p_commsinterface->tx_message.messagePacket.header._start_flag = FRAME_START_FLAG_VAL;
    p_commsinterface->tx_message.messagePacket.header._dev_address = p_commsinterface->_cfg.device_address;
    p_commsinterface->tx_message.messagePacket.header._mess_ID = messID;

    switch (functionCode) {
        case COMMSINTERFACE_FUNC_CODE_MULTIPLE_WRITE:
        {
            comsinterface_ProcessMultiWriteMessData(
                    regStartAddress,
                    regValArray,
                    regCount,
                    &p_commsinterface->_tx_multi_reg_buffer[FUNC_CODE_FRAME_INDEX],
                    (opCODE_1_regADDRESS_2_regCOUNT_1 + (regCount * REG_SIZE_2BYTE)));

            p_commsinterface->tx_message.messagePacket.header._mess_len = (opCODE_1_regADDRESS_2_regCOUNT_1 + (REG_SIZE_2BYTE * regCount));

            // Setup the message DATA
            p_commsinterface->tx_message.messagePacket.data._func_code = functionCode;
            memcpy(&p_commsinterface->_tx_multi_reg_buffer[START_FLAG_FRAME_INDEX], &p_commsinterface->tx_message.messFrameArray[START_FLAG_FRAME_INDEX], FUNC_CODE_FRAME_INDEX);

            // Calculate checksum and transmit packet based on function code
            size_t txBuffByteSize = (COMMSINTERFACE_PACKET_HEADER_SIZE + (size_t) p_commsinterface->tx_message.messagePacket.header._mess_len);
            p_commsinterface->tx_message.messagePacket.CheckSum_Fletcher16 = CommSPI_GetFletcher16(&p_commsinterface->_tx_multi_reg_buffer[START_FLAG_FRAME_INDEX], txBuffByteSize);
            p_commsinterface->_tx_multi_reg_buffer[txBuffByteSize] = p_commsinterface->tx_message.messFrameArray[CS_FLETCHER16_LSB_INDEX];
            p_commsinterface->_tx_multi_reg_buffer[txBuffByteSize + 1] = p_commsinterface->tx_message.messFrameArray[CS_FLETCHER16_MSB_INDEX];

            /* Transmit TX_BUFF[] */
            p_commsinterface->_cfg.transmit_packet_fxn(p_commsinterface, p_commsinterface->_tx_multi_reg_buffer, (txBuffByteSize + CHECKSUM_SIZE));
            break;
        }
        default:
        {
            // Do Nothing 
            break;
        }
          
    }
      return OP_STATUS_SUCCESS;
}

/********************************************************************************
 * @brief: 
 *******************************************************************************/
#define MULT_WRITE_FRAME_INDX_REG_COUNT   7U
#define VALID_MESSAGE_LEN_MULTI_WR        3U

op_status_t
CommSPI_ProcessReceiveMultiPacket(commsinterface_handle_t *p_commsinterface, uint16_t regAddress, uint16_t* regData, size_t regCount, commsinterface_func_code_t functionCode) {

    /* Checking function parameter */
    if ((p_commsinterface == NULL) || (regData == NULL)) {
        return OP_STATUS_ERROR;
    }

    op_status_t errorCode = OP_STATUS_ERROR;
    bool validMessLen = false;
    bool validFuncCode = false;
    bool validRegAddrss = false;
    bool validRegValWriten = false;
    bool validRegCount = false;
    p_commsinterface->_cfg.receive_multi_reg_respond_fxn(p_commsinterface, regAddress, p_commsinterface->_rx_buffer, COMMSINTERFACE_SINGLE_PACKET_MAX_SIZE);
    bool valid_CS = commsinterface_ValidateRxFrame(&p_commsinterface->_rx_buffer[0], COMMSINTERFACE_SINGLE_PACKET_MAX_SIZE, p_commsinterface->_cfg.device_address);
    /* Pad byte into union array */
    memcpy(&p_commsinterface->rx_message.messFrameArray[START_FLAG_FRAME_INDEX], &p_commsinterface->_rx_buffer[START_FLAG_FRAME_INDEX], TOTAL_SINGLE_PACKET_FRAME);
    uint8_t devAddrss_receive = p_commsinterface->rx_message.messagePacket.header._dev_address;
    uint8_t messID_receive = p_commsinterface->rx_message.messagePacket.header._mess_ID;
    uint8_t messLen_receive = p_commsinterface->rx_message.messagePacket.header._mess_len;
    uint8_t opCode_receive = p_commsinterface->rx_message.messagePacket.data._func_code;
    uint16_t regAdd_receive = p_commsinterface->rx_message.messagePacket.data._reg_addr;

    /* Checking return Error OP-CODE */
    if ((opCode_receive == COMMSINTERFACE_FUNC_CODE_MULTIPLE_READ_RESPOND) ||
            (opCode_receive == COMMSINTERFACE_FUNC_CODE_MULTIPLE_WRITE_RESPOND)) {
        *regData = p_commsinterface->_rx_buffer[ERROR_CODE_INDEX];
        return OP_STATUS_ERROR;
    }

    /* Common checks for read and write responses */
    validMessLen = (messLen_receive == VALID_MESSAGE_LEN_MULTI_WR);
    validFuncCode = (opCode_receive == functionCode);
    validRegAddrss = (regAdd_receive == regAddress);

    switch (functionCode) {
        case COMMSINTERFACE_FUNC_CODE_MULTIPLE_WRITE_RESPOND:

            validRegCount = (p_commsinterface->_rx_buffer[MULT_WRITE_FRAME_INDX_REG_COUNT] == regCount);
            if (valid_CS && validMessLen && validFuncCode && validRegAddrss && validRegCount) {
                errorCode = OP_STATUS_SUCCESS;
            }
            break;

        default:

            break;

    }
    return errorCode;
}

/********************************************************************************
 * @brief   
 *******************************************************************************/
uint16_t
CommSPI_GetFletcher16(uint8_t *p_data, size_t data_len) {
    uint32_t c0 = 0;
    uint32_t c1 = 0;
    size_t block_len = 0;
    size_t block_ctr = 0;
    size_t idx = 0;

    if (p_data != NULL) {
        while (idx < data_len) {
            /* Make sure c1 does not overflow, found by:     */
            /* n > 0 and n * (n+1) / 2 * (2^8-1) < (2^32-1). */
            block_len = data_len;
            if (block_len > 5002) {
                block_len = 5002;
            }

            for (block_ctr = 0; block_ctr < block_len; block_ctr++) {
                c0 = c0 + p_data[idx];
                c1 = c1 + c0;
                idx++;
            }

            c0 = c0 % 255;
            c1 = c1 % 255;
        }

        return (uint16_t) ((c1 << 8) | c0);
    } else {
        return 0;
    }
}


