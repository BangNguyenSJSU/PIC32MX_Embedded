/* 
 * File:   SPI.h
 * Author: bang.nguyen
 *
 * Created on April 25, 2023, 1:02 PM
 */

#ifndef SPI_H
#define	SPI_H

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include <xc.h>
#include <sys/attribs.h>

#ifdef	__cplusplus
extern "C" {
#endif

    /*------- SPI CONTROL REGISTER (SPIxCONbits.<option>) -------*/
    typedef enum {
        SPI_RX_INTERRUPT_FULL = 0b11,
        SPI_RX_INTERRUPT_HALF_FULL = 0b10,
        SPI_RX_INTERRUPT_NOT_EMPTY = 0b01,
        SPI_RX_INTERRUPT_LAST_WORD_READ = 0b00
    } SPI_CON_RX_INTR_MODE;

    typedef enum {
        SPI_TX_INTERRUPT_NOT_FULL = 0b11,
        SPI_TX_INTERRUPT_HALF_EMPTY = 0b10,
        SPI_TX_INTERRUPT_COMPLETELY_EMPTY = 0b01,
        SPI_TX_INTERRUPT_LAST_TRANSFER_COMPLETE = 0b00
    } SPI_CON_TX_INTR_MODE;

    typedef enum {
        SPI_SDI_PIN_NOT_USED = 0b1,
        SPI_SDI_PIN_USED = 0b0
    } SPI_CON_DISSDI_ENUM;

    typedef enum {
        SPI_MASTER_MODE = 0b1,
        SPI_SLAVE_MODE = 0b0
    } SPI_CON_MSTEN_ENUM;

    typedef enum {
        SPI_CLOCK_IDLE_HIGH = 0b1,
        SPI_CLOCK_IDLE_LOW = 0b0
    } SPI_CON_CKP_ENUM;

    typedef enum {
        SPI_SS_PIN_USED = 0b1,
        SPI_SS_PIN_NOT_USED = 0b0
    } SPI_CON_SSEN_ENUM;

    typedef enum {
        SPI_DATA_ACTIVE_TO_IDLE = 0b1,
        SPI_DATA_IDLE_TO_ACTIVE = 0b0
    } SPI_CON_CKE_ENUM;

    typedef enum {
        SPI_SMP_END = 1,
        SPI_SMP_MID = 0
    } SPI_CON_SMP_ENUM;

    typedef enum {
        SPI_COMMUNICATION_32_BIT = 0b10,
        SPI_COMMUNICATION_16_BIT = 0b01,
        SPI_COMMUNICATION_8_BIT = 0b00
    } SPI_CON_MODE_ENUM;

    typedef enum {
        SPI_SDO_PIN_NOT_USED = 0b1,
        SPI_SDO_PIN_USED = 0b0
    } SPI_CON_DISSDO_ENUM;

    typedef enum {
        SPI_STOP_IN_IDLE_MODE = 0b1,
        SPI_CONTINUE_IN_IDLE_MODE = 0b0
    } SPI_CON_SIDL_ENUM;

    typedef enum {
        SPI_PERIPHERAL_ENABLED = 0b1,
        SPI_PERIPHERAL_DISABLED = 0b0
    } SPI_CON_ON_ENUM;

    typedef enum {
        SPI_ENHANCED_BUFFER_ENABLED = 0b1,
        SPI_ENHANCED_BUFFER_DISABLED = 0b0
    } SPI_CON_ENHBUF_ENUM;

    typedef enum {
        SPI_FRAME_SYNC_FIRST_BIT = 0b1,
        SPI_FRAME_SYNC_PRECEDES_FIRST_BIT = 0b0
    } SPI_CON_SPIFE_ENUM;

    typedef enum {
        SPI_MASTER_CLOCK_MCLK_USED = 0b1,
        SPI_MASTER_CLOCK_PBCLK_USED = 0b0
    } SPI_CON_MCLKSEL_ENUM;

    typedef enum {
        SPI_FRAME_SYNC_PULSE_COUNT_DATA_1 = 0b000,
        SPI_FRAME_SYNC_PULSE_COUNT_DATA_2 = 0b001,
        SPI_FRAME_SYNC_PULSE_COUNT_DATA_4 = 0b010,
        SPI_FRAME_SYNC_PULSE_COUNT_DATA_8 = 0b011,
        SPI_FRAME_SYNC_PULSE_COUNT_DATA_16 = 0b100,
        SPI_FRAME_SYNC_PULSE_COUNT_DATA_32 = 0b101,
    } SPI_CON_FRMCNT_ENUM;

    typedef enum {
        SPI_FRAME_SYNC_PULSE_WORD_LENGTH = 0b1,
        SPI_FRAME_SYNC_PULSE_ONE_CLOCK = 0b0
    } SPI_CON_FRMSYPW_ENUM;

    typedef enum {
        SPI_MASTER_SLAVE_SELECT_ENABLED = 0b1,
        SPI_MASTER_SLAVE_SELECT_DISABLED = 0b0
    } SPI_CON_MSSEN_ENUM;

    typedef enum {
        SPI_FRAME_PULSE_ACTIVE_HIGH = 0b1,
        SPI_FRAME_PULSE_ACTIVE_LOW = 0b0
    } SPI_CON_FRMPOL_ENUM;

    typedef enum {
        SPI_FRAME_SYNC_PULSE_INPUT = 0b1,
        SPI_FRAME_SYNC_PULSE_OUTPUT = 0b0
    } SPI_CON_FRMSYNC_ENUM;

    typedef enum {
        SPI_FRAMED_SPI_ENABLED = 0b1,
        SPI_FRAMED_SPI_DISABLED = 0b0
    } SPI_CON_FRMEN_ENUM;

    /*-------------- Interface Function -----------*/
/**
 * @brief   Initializes SPI1 as a master device with the specified frequency.
 * @param   frequencyHz: The clock frequency for the SPI bus.
 * @retval  None.
 */
void SPI1_Init_Master(uint32_t frequencyHz);

/**
 * @brief   Transfers a single byte over SPI1.
 * @param   data: The byte to be transmitted.
 * @retval  The byte received over SPI1.
 */
uint8_t SPI1_TransferByte(uint8_t data);

/**
 * @brief   Transfers multiple bytes over SPI1.
 * @param   tx_data: A pointer to the buffer containing the data to be transmitted.
 * @param   rx_data: A pointer to the buffer for storing the received data.
 * @param   length: The length of the data to be transferred, in bytes.
 * @retval  None.
 */
void SPI1_TransferMultiBytes(const uint8_t *tx_data, uint8_t *rx_data, uint16_t length);

    
#ifdef	__cplusplus
}
#endif

#endif	/* SPI_H */

