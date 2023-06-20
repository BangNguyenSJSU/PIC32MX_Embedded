/* 
 * File:   I2C.h
 * Author: Bang Nguyen 
 *
 * Created on February 9, 2023, 8:53 PM
 */

#ifndef I2C_H
#define	I2C_H

#include <stddef.h>
#include <stdbool.h>

// I2C1CON
#define I2C2_TURN_ON 0b1
#define I2C2_TURN_OFF 0b0
#define Disable_SLEW_RATE 0b1
#define INIT_START_CONDITION 0b1
#define INIT_STOP_CONDITION 0b1
#define INIT_RESTART_CONDITION 0b1

// I2C1CONbits.ACKDT
#define SEND_ACK 0b0
#define SEN_NACK 0b1

// I2C1CONbits.ACKEN
#define INIT_ACK_SEQUENCE 0b1
#define ACK_SEQUENCE_notInPROGRESS 0b0

// I2C1STAT
#define TX_STATUS_BIT_inPROGRESS 0b1
#define TX_STATUS_BIT_notInPROGRESS 0b0
#define TX_BUFFER_isFULL 0b1
#define TX_BUFFER_isEMPTY 0b0 

#define ACK_NOT_RECEIVED 0b1
#define ACK_RECEIVED 0b0


#define EEPROM_SLAVE_ADD 0x50

#ifdef	__cplusplus
extern "C" {
#endif

    /**
     * @file i2c.h
     * @brief I2C and EEPROM related functions
     */

    /****************** Interface FUNCTIONS *****************/

    /**
     * @brief Initialize the I2C module.
     * @param i2cClkFrequency The clock frequency for the I2C module.
     */
    void I2C_Initalize(double i2cClkFrequency);

    /**
     * @brief Wait for the I2C module to become idle.
     */
    void I2C_wait_for_idle(void);

    /**
     * @brief Start the I2C transmission.
     * @return true if the start was successful, false otherwise.
     */
    bool I2C_start();

    /**
     * @brief Stop the I2C transmission.
     * @return true if the stop was successful, false otherwise.
     */
    bool I2C_stop();

    /**
     * @brief Restart the I2C transmission.
     * @return true if the restart was successful, false otherwise.
     */
    bool I2C_restart();

    /**
     * @brief Send an ACK over I2C.
     * @return true if the ACK was successful, false otherwise.
     */
    bool I2C_ack(void);

    /**
     * @brief Send a NACK over I2C.
     * @return true if the NACK was successful, false otherwise.
     */
    bool I2C_nack(void);

    /**
     * @brief Write a value over I2C.
     * @param value The value to write. This could be an I2C slave address (8 bits) or an I2C slave data (1 byte).
     * @param wait_ack Whether to wait for an ACK bit. Set to true to wait, false to skip ACK checking.
     */
    void I2C_raw_write(unsigned char value, bool wait_ack);

    /**
     * @brief Read a value over I2C.
     * @param value Pointer to the location where the read value should be stored.
     * @param ack_nack Whether to send an ACK or a NACK after reading. Set to true to send an ACK, false to send a NACK.
     * @return true if the read was successful, false otherwise.
     */
    bool I2C_raw_read(unsigned char *value, bool ack_nack);

    /****************** Application FUNCTIONS *****************/

    /**
     * @brief Write data to an I2C EEPROM.
     * @param slaveAddress The address of the EEPROM.
     * @param memLocation The memory location to write to.
     * @param data Pointer to the data to write.
     * @param size The size of the data to write.
     * @return The status of the write operation. 0 for success, error code otherwise.
     */
    uint8_t i2c_eeprom_write(uint8_t slaveAddress, uint16_t memLocation,unsigned char* data, size_t size);

    /**
     * @brief Read data from an I2C EEPROM.
     * @param slaveAddress The address of the EEPROM.
     * @param memLocation The memory location to read from.
     * @param data Pointer to the location where the read data should be stored.
     * @param size The size of the data to read.
     * @return The status of the read operation. 0 for success, error code otherwise.
     */
    uint8_t i2c_eeprom_read(uint8_t slaveAddress, uint16_t memLocation,unsigned char* data, size_t size);

    uint8_t
    i2c_LCD_write(uint8_t slaveAddress,unsigned char* data);

#ifdef	__cplusplus
}
#endif

#endif	/* I2C_H */
