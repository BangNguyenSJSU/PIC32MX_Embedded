#include <stdlib.h>
#include <stdint.h>
#include <xc.h>
#include <sys/attribs.h>
#include "SPI.h"
#include "definitions.h"
#include "../gpio/plib_gpio.h"
// #include "SYSTEM_DEF.h"

/* ----------------- Static local function ----------------- */
static void setup_spi_pins(void) {
    
//    GPIO_SetDir(PORT_D, PIN_0, OUTPUT); // Overlap with LED1
//    GPIO_SetDir(PORT_D, PIN_10,OUTPUT);
//    GPIO_SetDir(PORT_A, PIN_6, OUTPUT);
//    GPIO_SetDir(PORT_C, PIN_4, INPUT);
    
    /* Using Plib */
    GPIO_PinInputEnable(GPIO_PIN_RC4);
    GPIO_PinOutputEnable(GPIO_PIN_RD0);
    GPIO_PinOutputEnable(GPIO_PIN_RD10);
    GPIO_PinOutputEnable(GPIO_PIN_RA6);
}

static void SPI1_SetClockFrequency(uint32_t pb_clock, uint32_t spi_clock) {
    // Calculate the baud rate divider value
    uint32_t brg = (pb_clock / (2 * spi_clock)) - 1;

    // Check for valid SPI baud rate divider
    if (brg > 0x1FFF) {
        brg = 0x1FFF;
    }

    // Set the baud rate divider in the SPI1BRG register
    SPI1BRG = brg;
}

/* ----------------- SPI Interface function  ----------------- */
void SPI1_Init_Master(uint32_t frequencyHz) {
    // Setup SPI Pins 
    setup_spi_pins();
 
    // Turn off SPI before configuring
    SPI1CONbits.ON = SPI_PERIPHERAL_DISABLED;

    // Enable Master mode, set clock polarity and data sample phase
    SPI1CONbits.MSTEN = SPI_MASTER_MODE;
    SPI1CONbits.CKP = SPI_CLOCK_IDLE_LOW;
    SPI1CONbits.CKE = SPI_DATA_ACTIVE_TO_IDLE;
    SPI1CONbits.SMP = SPI_SMP_END;

    // Select 8-bit mode
    SPI1CONbits.MODE16 = SPI_COMMUNICATION_8_BIT;
    SPI1CONbits.MODE32 = SPI_COMMUNICATION_8_BIT;

    // Set baud rate
    SPI1_SetClockFrequency(_GetPeripheralClock(), frequencyHz);

    // clear RX OverFlow Bits 
    SPI1STATbits.SPIROV = 0;

    // Disable Enhanced Buffer mode
    SPI1CONbits.ENHBUF = SPI_ENHANCED_BUFFER_DISABLED;

    // Turn on SPI peripheral
    SPI1CONbits.ON = SPI_PERIPHERAL_ENABLED;
}

uint8_t SPI1_TransferByte(uint8_t data) {
    // Wait for the SPI1 transmitter to be ready
    while (SPI1STATbits.SPITBF);

    // Send data to the SPI1 buffer
    SPI1BUF = data & 0xFF;

    // Wait for the SPI1 transfer to complete
    while (!SPI1STATbits.SPIRBF);

    // Return the received data from the SPI1 buffer
    return (uint8_t) (SPI1BUF);
}

void SPI1_TransferMultiBytes(const uint8_t *tx_data, uint8_t *rx_data, uint16_t length) {
    if (tx_data == NULL || length == 0) {
        return;
    }
    if (rx_data != NULL) {
        for (uint16_t i = 0; i < length; i++) {
            // Transfer a single byte using SPI1_TransferByte()
            uint8_t received_byte = SPI1_TransferByte(tx_data[0]);

            // Store the received byte in the rx_data buffer
            rx_data[i] = received_byte;
        }
    } else {
        for (uint16_t i = 0; i < length; i++) {
            // Transfer a single byte using SPI1_TransferByte() 
            // without storing the received byte
            SPI1_TransferByte(tx_data[i]);
        }
    }
}

/*-------------- Application Function -----------*/

