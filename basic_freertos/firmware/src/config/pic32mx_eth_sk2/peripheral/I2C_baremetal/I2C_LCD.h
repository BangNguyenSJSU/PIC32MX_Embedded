/* 
 * File:   I2C_LCD.h
 * Author: Owner
 *
 * Created on June 5, 2023, 5:27 PM
 */

#ifndef I2C_LCD_H
#define	I2C_LCD_H

#ifdef	__cplusplus
extern "C" {
#endif

// DFRobot.com
#ifndef LiquidCrystal_I2C_h
#define LiquidCrystal_I2C_h

#include <stddef.h>
#include <stdint.h>

// commands
#define LCD_CLEARDISPLAY 0x01
#define LCD_RETURNHOME 0x02
#define LCD_ENTRYMODESET 0x04
#define LCD_DISPLAYCONTROL 0x08
#define LCD_CURSORSHIFT 0x10
#define LCD_FUNCTIONSET 0x20
#define LCD_SETCGRAMADDR 0x40
#define LCD_SETDDRAMADDR 0x80

// flags for display entry mode
#define LCD_ENTRYRIGHT 0x00
#define LCD_ENTRYLEFT 0x02
#define LCD_ENTRYSHIFTINCREMENT 0x01
#define LCD_ENTRYSHIFTDECREMENT 0x00

// flags for display on/off control
#define LCD_DISPLAYON 0x04
#define LCD_DISPLAYOFF 0x00
#define LCD_CURSORON 0x02
#define LCD_CURSOROFF 0x00
#define LCD_BLINKON 0x01
#define LCD_BLINKOFF 0x00

// flags for display/cursor shift
#define LCD_DISPLAYMOVE 0x08
#define LCD_CURSORMOVE 0x00
#define LCD_MOVERIGHT 0x04
#define LCD_MOVELEFT 0x00

// flags for function set
#define LCD_8BITMODE 0x10
#define LCD_4BITMODE 0x00
#define LCD_2LINE 0x08
#define LCD_1LINE 0x00
#define LCD_5x10DOTS 0x04
#define LCD_5x8DOTS 0x00

// flags for backlight control
#define LCD_BACKLIGHT 0b00001000
#define LCD_NOBACKLIGHT 0b00000000

// values for graphtype in calls to init_bargraph and character geometry
#define LCDI2C_VERTICAL_BAR_GRAPH 1
#define LCDI2C_HORIZONTAL_BAR_GRAPH 2
#define LCDI2C_HORIZONTAL_LINE_GRAPH 3
#define LCD_CHARACTER_HORIZONTAL_DOTS 5
#define LCD_CHARACTER_VERTICAL_DOTS 8

#define ENABLE_BIT 0b00000100 // Enable bit
#define READ_WRITE_BIT 0b00000010 // Read/Write bit
#define REGISTER_SELECT_MODE_BIT 0b00000001 // Register select bit



/* ------------- High-level (Compatibility API functions) ------------- */

void LCD_CLEAR_PARTICULAR(uint8_t rowStart, uint8_t colStart, uint8_t colCnt);
void LCD_init(uint8_t SlaveAddr, uint8_t cols, uint8_t rows, uint32_t i2cSpeed); 
void LCD_SET_CURSOR(uint8_t col, uint8_t row);
void LCD_CURSOR_HOME();
void LCD_CLEAR_ALL();
void LCD_ON();                                                  
void LCD_OFF();                                                  
void LCD_BLINK_ON();                                             
void LCD_BLINK_OFF();                                           
void LCD_CURSOR_ON();                                           
void LCD_CURSOR_OFF();                                           
void LCD_SET_BACK_LIGHT(bool isBlackLightON);                          
void LCD_LOAD_CUSTOM_CHAR_8CGRAM(uint8_t char_num, uint8_t *rows); 
void LCD_PRINT_STRING(char *String_Input, size_t strSize, uint8_t rowStart, uint8_t colStart);

/*------------- Mid-level (Support API functions) ----- */
void _writeCommandBus(uint8_t value);
size_t _writeData(uint8_t value);
void _init_priv();
void _begin(uint8_t cols, uint8_t rows, uint8_t charsize);


/* ------------ In Progress (nice to have) ------------ */
void scrollDisplayLeft();
void scrollDisplayRight();
void leftToRight();
void rightToLeft();
void noAutoscroll();
void autoscroll();
void createChar(uint8_t location, uint8_t charmap[]);  


#endif



#ifdef	__cplusplus
}
#endif

#endif	/* I2C_LCD_H */

