
#include <stdint.h>
#include <stdio.h>
#include <string.h> 
#include "../coretimer/plib_coretimer.h"
#include "I2C_LCD.h"
#include "I2C_2_PIC32MX.h"

#define CLAMP_VALUE_TO_RANGE(inputVal, low, high) ((inputVal) < (low) ? (low) : ((inputVal) > (high) ? (high) : (inputVal)))

///////////////////////////////////////////////////////////////////
// When the display powers up, it can be configured as follows:
//
// 1. Display clear
// 2. Function set:
//    DL = 1; 8-bit interface data
//    N = 0; 1-line display
//    F = 0; 5x8 dot character font
// 3. Display on/off control:
//    D = 0; Display off
//    C = 0; Cursor off
//    B = 0; Blinking off
// 4. Entry mode set:
//    I/D = 1; Increment by 1
//    S = 0; No shift
///////////////////////////////////////////////////////////////////

/* --------------- Private attributes (Declaration) --------------- */
static uint8_t _Addr;
static uint8_t _displayfunction;
static uint8_t _displaycontrol;
static uint8_t _displaymode;
static uint8_t _numlines;
static uint8_t _cols;
static uint8_t _rows;
static uint8_t _backlightval;
/*--------------- Private Function (Declaration) --------------- */

static void LiquidCrystal_I2C (uint8_t addr, uint8_t cols, uint8_t rows);

static void noDisplay ();
static void display ();
static void noBlink ();
static void blink ();
static void noCursor ();
static void cursor ();
static void noBacklight ();
static void backlight (); // Static 

/* Low-level data pushing commands */
static void write4bits (uint8_t);
static void expanderWrite (uint8_t);
static void pulseEnable (uint8_t);
static void send (uint8_t value, uint8_t mode);

/* --------------- Private Function (Definition) ---------------*/
static void
LiquidCrystal_I2C (uint8_t addr, uint8_t cols, uint8_t rows)
{
  _Addr = addr;
  _cols = cols;
  _rows = rows;
  _backlightval = LCD_NOBACKLIGHT;
}

static void
noDisplay ()
{
  // Turn the display on/off (quickly)
  _displaycontrol &= ~LCD_DISPLAYON;
  _writeCommandBus (LCD_DISPLAYCONTROL | _displaycontrol);
}

static void
display ()
{
  _displaycontrol |= LCD_DISPLAYON;
  _writeCommandBus (LCD_DISPLAYCONTROL | _displaycontrol);
}

static void
noCursor ()
{
  // Turns the underline cursor on/off
  _displaycontrol &= ~LCD_CURSORON;
  _writeCommandBus (LCD_DISPLAYCONTROL | _displaycontrol);
}

static void
cursor ()
{
  _displaycontrol |= LCD_CURSORON;
  _writeCommandBus (LCD_DISPLAYCONTROL | _displaycontrol);
}

static void
noBlink ()
{
  // Turn on and off the blinking cursor
  _displaycontrol &= ~LCD_BLINKON;
  _writeCommandBus (LCD_DISPLAYCONTROL | _displaycontrol);
}

static void
blink ()
{
  _displaycontrol |= LCD_BLINKON;
  _writeCommandBus (LCD_DISPLAYCONTROL | _displaycontrol);
}

static void
noBacklight (void)
{
  // Turn the (optional) back-light on/off
  _backlightval = LCD_NOBACKLIGHT;
  expanderWrite (0);
}

static void
backlight (void)
{
  _backlightval = LCD_BACKLIGHT;
  expanderWrite (0);
}

/* --- Data Bus or Cmds Bus  (public Mid-Level) --- */
void
_writeCommandBus (uint8_t value)
{
  // This is the function that send t conmand Byte into the bus (Control Register)
  send (value, 0);
}

size_t
_writeData (uint8_t value)
{
  // This is the function that send the data Byte into the bus ( VRAM)
  send (value, REGISTER_SELECT_MODE_BIT);
  return 1; // Number of processed bytes
}

/* --- low level data pushing commands --- */

static void
pulseEnable (uint8_t _data)
{
  expanderWrite (_data | ENABLE_BIT); // En high
  //delay_coreTimer_ms(1); // enable pulse must be >450ns
  CORETIMER_DelayUs (100);

  expanderWrite (_data & ~ENABLE_BIT); // En low
  CORETIMER_DelayUs (50); // commands need > 37us to settle
}

static void
expanderWrite (uint8_t _data)
{
  /* This function is a low level byte transfer to LCD module */
  uint8_t data_transfer = ((_data) | _backlightval);
  /* Reuse I2C write EPPROM */
  i2c_LCD_write (_Addr,&data_transfer);
}

static void
write4bits (uint8_t value)
{
  expanderWrite (value);
  pulseEnable (value);
}

static void
send (uint8_t value, uint8_t mode)
{
  // write either command or data
  uint8_t highnib = value & 0xF0;
  uint8_t lownib = value << 4;
  write4bits ((highnib) | mode);
  write4bits ((lownib) | mode);
}

void
LCD_init (uint8_t SlaveAddr, uint8_t cols, uint8_t rows, uint32_t i2cSpeed)
{
  LiquidCrystal_I2C (SlaveAddr, cols, rows);
  I2C_Initalize (i2cSpeed);
  _init_priv ();
}

void
_init_priv ()
{
  _displayfunction = LCD_4BITMODE | LCD_1LINE | LCD_5x8DOTS;
  _begin (_cols, _rows, LCD_5x8DOTS);
}

void
_begin (uint8_t cols, uint8_t lines, uint8_t charsize)
{
  if (lines > 1)
    {
      _displayfunction |= LCD_2LINE;
    }
  _numlines = lines;

  // for some 1 line displays you can select a 10 pixel high font
  if ((charsize != 0) && (lines == 1))
    {
      _displayfunction |= LCD_5x10DOTS;
    }

  //////////////////////////////////////////////////////////////////////////////
  // SEE PAGE 45/46 FOR INITIALIZATION SPECIFICATION!
  // according to datasheet, we need at least 40ms after power rises above 2.7V
  // before sending commands. MCU can turnON at 4.5V (faster than LCD) so we'll wait 50
  /////////////////////////////////////////////////////////////////////////////////
  CORETIMER_DelayMs (40);

  // Now we pull both RS and R/W low to begin commands
  expanderWrite (_backlightval); // reset expande_rand turn backlightOff (Bit 8 =1)
  CORETIMER_DelayMs (10); // 1000

  ////////////////////////////////////////////////////////
  // put the LCD into 4 bit mode
  // this is according to the hitachi HD44780 datasheet
  ////////////////////////////////////////////////////////
  // Figure-24 - Page: 46

  // we start in 8bit mode, try to set 4 bit mode
  write4bits (0x30);
  CORETIMER_DelayMs (1); // wait min 1ms

  // second try
  write4bits (0x30);
  CORETIMER_DelayMs (1); // wait min 1ms

  // third go!
  write4bits (0x30);
  CORETIMER_DelayMs (1);

  // finally, set to 4-bit interface
  write4bits (0x20);

  // set # lines, font size, etc.
  _writeCommandBus (LCD_FUNCTIONSET | _displayfunction);

  // turn the display on with no cursor or blinking default
  _displaycontrol = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF;
  display ();

  // clear it off
  LCD_CLEAR_ALL ();

  // Initialize to default text direction (for roman languages)
  _displaymode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;

  // set the entry mode
  _writeCommandBus (LCD_ENTRYMODESET | _displaymode);

  LCD_CURSOR_HOME ();
}

/* ------------- High-level (Compatibility API functions) ------------- */
void
LCD_CLEAR_ALL ()
{
  // clear display, set cursor position to zero
  _writeCommandBus (LCD_CLEARDISPLAY);
  CORETIMER_DelayMs (2); // this command takes a long time!
}

void
LCD_CLEAR_PARTICULAR (uint8_t rowStart, uint8_t colStart, uint8_t colCnt)
{
  // Clear particular segment of a row
  // Maintain input parameters
  rowStart = CLAMP_VALUE_TO_RANGE (rowStart, 0, _rows - 1);
  colStart = CLAMP_VALUE_TO_RANGE (colStart, 0, _cols - 1);
  colCnt = CLAMP_VALUE_TO_RANGE (colCnt, 0, _cols - colStart);
  // Clear segment
  LCD_SET_CURSOR (colStart, rowStart);
  for (uint8_t i = 0; i < colCnt; i++)
    _writeData (' ');
  // Go to segment start
  LCD_SET_CURSOR (colStart, rowStart);
}

void
LCD_CURSOR_HOME ()
{
  _writeCommandBus (LCD_RETURNHOME); // set cursor position to zero
  CORETIMER_DelayMs (2); // this command takes a long time!
}

void
LCD_SET_CURSOR (uint8_t col, uint8_t row)
{
  int row_offsets[] = {0x00, 0x40, 0x14, 0x54};
  if (row > _numlines)
    {
      row = _numlines - 1; // we count rows starting w/0
    }
  _writeCommandBus (LCD_SETDDRAMADDR | (col + row_offsets[row]));
}

void
LCD_ON ()
{
  display ();
}

void
LCD_OFF ()
{
  noDisplay ();
}

void
LCD_CURSOR_ON ()
{
  cursor ();
}

void
LCD_CURSOR_OFF ()
{
  noCursor ();
}

void
LCD_BLINK_ON ()
{
  blink ();
}

void
LCD_BLINK_OFF ()
{
  noBlink ();
}

void
LCD_LOAD_CUSTOM_CHAR_8CGRAM (uint8_t char_num, uint8_t *rows)
{
  createChar (char_num, rows);
}

void
LCD_SET_BACK_LIGHT (bool isBlackLightON)
{
  if (isBlackLightON)
    {
      backlight ();
    }
  else
    {
      noBacklight ();
    }
}

void
LCD_PRINT_STRING (char *String_Input, size_t strSize, uint8_t rowStart, uint8_t colStart)
{

  size_t string_size;
  // wrap-around case -->
  if (rowStart == 2 && colStart < 21)
    {
      rowStart = 0;
      colStart = colStart + 20;
    }
  else if (rowStart == 3 && colStart < 21)
    {
      rowStart = 1;
      colStart = colStart + 20;
    }

  LCD_SET_CURSOR (colStart, rowStart);

  // find the size of the string using strlen()
  if (strSize == 0)
    {
      string_size = strlen (String_Input);
    }
  else
    {
      string_size = strSize;
    }

  // Print out the string
  for (size_t string_index = 0; string_index < string_size; string_index++)
    {
      _writeData (String_Input[string_index]);
    }
}

/* ------------ In Progress (nice to have) ------------ */

void
scrollDisplayLeft (void)
{
  // These commands scroll the display without changing the RAM
  _writeCommandBus (LCD_CURSORSHIFT | LCD_DISPLAYMOVE | LCD_MOVELEFT);
}

void
scrollDisplayRight (void)
{
  _writeCommandBus (LCD_CURSORSHIFT | LCD_DISPLAYMOVE | LCD_MOVERIGHT);
}

void
leftToRight (void)
{
  // This is for text that flows Left to Right
  _displaymode |= LCD_ENTRYLEFT;
  _writeCommandBus (LCD_ENTRYMODESET | _displaymode);
}

void
rightToLeft (void)
{
  // This is for text that flows Right to Left
  _displaymode &= ~LCD_ENTRYLEFT;
  _writeCommandBus (LCD_ENTRYMODESET | _displaymode);
}

void
autoscroll (void)
{
  // This will 'right justify' text from the cursor
  _displaymode |= LCD_ENTRYSHIFTINCREMENT;
  _writeCommandBus (LCD_ENTRYMODESET | _displaymode);
}

void
noAutoscroll (void)
{
  // This will 'left justify' text from the cursor
  _displaymode &= ~LCD_ENTRYSHIFTINCREMENT;
  _writeCommandBus (LCD_ENTRYMODESET | _displaymode);
}

void
createChar (uint8_t location, uint8_t charmap[])
{
  // Allows us to fill the first 8 CGRAM locations
  // with custom characters
  location &= 0x7; // we only have 8 locations 0-7
  _writeCommandBus (LCD_SETCGRAMADDR | (location << 3));
  for (int i = 0; i < 8; i++)
    {
      _writeData (charmap[i]);
    }
}