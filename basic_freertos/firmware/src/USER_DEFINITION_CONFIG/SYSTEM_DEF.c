#include <stdint.h>
#include <stdbool.h>
#include <xc.h>
#include <sys/attribs.h>
#include "SYSTEM_DEF.h"

#include "../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.h"
#include "../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.h"

#define SPI_SPEED_HZ 500000u
#define UART_SPEED_BAUDRATE 57600u
#define I2C_SPEED_HZ 100000u

#define LCD_I2C_SLAVE_ADD 0x27
#define LCD_MAX_COLLUM 20u
#define LCD_MAX_ROW 4u





void USER_LCD_INIT(void) {
    LCD_init(LCD_I2C_SLAVE_ADD, LCD_MAX_COLLUM, LCD_MAX_ROW, I2C_SPEED_HZ);
    LCD_SET_BACK_LIGHT(true);
}