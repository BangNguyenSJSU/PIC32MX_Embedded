#include <stdlib.h>
#include <stdint.h>
#include <xc.h>
#include <sys/attribs.h>
#include "I2C_2_PIC32MX.h"
#include "../../definitions.h" 
#include "../coretimer/plib_coretimer.h"


void
I2C_Initalize (double i2cClkFrequency)
{
  const uint32_t SYS_FREQ = _GetPeripheralClock ();
  double BRG;
  I2C2CON = 0x0;
  I2C2CONbits.ON = I2C2_TURN_OFF;
  I2C2CONbits.DISSLW = Disable_SLEW_RATE; // for 100kHz

  /* Calculate Baudrate */
  BRG = ((float) ((float) SYS_FREQ / 2.0) * (1 / (float) i2cClkFrequency - 0.000000130)) - 1;
  I2C2BRG = (int) BRG; // Set baud rate



  I2C2CONbits.ON = I2C2_TURN_ON;
}

/*
 * I2C_wait_for_idle() waits until the I2C peripheral is no longer doing anything  
 * *******************************************************************************
 * I2C2CONbits.SEN - Start Condition Enable bit[0]
 * I2C2CONbits.RSEN - Restart (Repeated start) Condition Enable bit [1]
 * I2C2CONbits.PEN - Stop Condition Enable bit [2]
 * I2C2CONbits.RCEN - Receive Enable bit (when operating as I2C master)[3]
 * I2C2CONbits.ACKDT - Acknowledge Data bit. Set to 0 to ACK and 1 for NACK.[4]
 * I2C2CONbits.ACKEN - Acknowledge Sequence Enable bit[4]
 */
void
I2C_wait_for_idle (void)
{
  while (I2C2CON & 0x1F)
    {
      /* Wait, Acknowledge sequence not in progress !
        Receive sequence not in progress
        Stop condition not in progress
        Repeated Start condition not in progress
         Start condition not in progress
       */
    };
  while (I2C2STATbits.TRSTAT & TX_STATUS_BIT_inPROGRESS)
    {
      /* Bit = 0 ? Master transmit is not in progress  */
    }
}

bool
I2C_start ()
{
  I2C_wait_for_idle ();
  I2C2CONbits.SEN = INIT_START_CONDITION;
  while (I2C2CONbits.SEN == INIT_START_CONDITION)
    {
      /* Wait ! */
    }
  return true;
}

bool
I2C_stop ()
{
  I2C_wait_for_idle ();
  I2C2CONbits.PEN = INIT_STOP_CONDITION;
  return true;
}

bool
I2C_restart ()
{
  I2C_wait_for_idle ();
  I2C2CONbits.RSEN = INIT_RESTART_CONDITION;
  while (I2C2CONbits.RSEN == INIT_RESTART_CONDITION)
    {
      /* Wait ! */
    }
  return true;
}

bool
I2C_ack (void)
{
  I2C_wait_for_idle ();
  I2C2CONbits.ACKDT = SEND_ACK; // Set hardware to send ACK bit
  I2C2CONbits.ACKEN = INIT_ACK_SEQUENCE; // Send ACK bit, will be automatically cleared by hardware when sent  
  while (I2C2CONbits.ACKEN)
    {
      /* Wait until ACKEN bit is cleared, meaning ACK bit has been sent ! */
    };
  return true;
}

bool
I2C_nack (void)
{
  I2C_wait_for_idle ();
  I2C2CONbits.ACKDT = SEN_NACK; // Set hardware to send NACK bit
  I2C2CONbits.ACKEN = INIT_ACK_SEQUENCE; // Send NACK bit, will be automatically cleared by hardware when sent  
  while (I2C2CONbits.ACKEN)
    {
      /* WaitWait until ACKEN bit is cleared, meaning ACK bit has been sent ! */
    }
  return true;
}

void
I2C_raw_write (unsigned char value, bool wait_ack)
{
  I2C2TRN = value | 0b0; // Send slave address with Read/Write bit cleared
  while (I2C2STATbits.TBF == TX_BUFFER_isFULL)
    {
      /* Wait until transmit buffer is empty */
    }
  I2C_wait_for_idle (); // Wait until I2C bus is idle
  if (wait_ack)
    {
      while (I2C2STATbits.ACKSTAT == ACK_NOT_RECEIVED)
        {
          // Wait until ACK is received 
        };
    }
}

bool
I2C_raw_read (unsigned char *value, bool ack_nack)
{
  I2C2CONbits.RCEN = 1; // Receive enable
  while (I2C2CONbits.RCEN); // Wait until RCEN is cleared (automatic)  
  while (!I2C2STATbits.RBF); // Wait until Receive Buffer is Full (RBF flag)  
  *value = I2C2RCV; // Retrieve value from I2C2RCV

  if (ack_nack) // Do we need to send an ACK or a NACK? 
    {
      I2C_ack (); // Send ACK  
      return true;
    }
  else
    {
      I2C_nack (); // Send NACK  
      return false;
    }

}

uint8_t
i2c_eeprom_write (uint8_t slaveAddress, uint16_t memLocation,unsigned char* data, size_t size)
{
  uint8_t ByteIsRead = 0;
  bool ready = false;
  CORETIMER_DelayMs (5);

  if (size > 128)
    {
      /* Max Size Buffer 128  Bytes*/
      return 0;
    }

  ready = I2C_start ();
  if (!ready)
    {
      /* Not Ready */
      return 0;
    }
  else
    { /* Send SLAVE address, read/write bit not set (AD + W) */
      I2C_raw_write (slaveAddress << 1, false);
      I2C_raw_write ((memLocation >> 8)&0xFF, false); // MSB_ADDRESS
      I2C_raw_write ((memLocation & 0x00FF), false); // LSB_ADDRESS

      for (int index = 0; index < size; index++)
        {
          /* Send the register address (RA) */
          I2C_raw_write ((data[index]&0xFF), false);
          ByteIsRead = index + 1;
        }

      /* Send stop condition */
      I2C_stop ();
      return ByteIsRead;
    }
}

uint8_t
i2c_eeprom_read (uint8_t slaveAddress, uint16_t memLocation,unsigned char* data, size_t size)
{
  uint8_t writtenByte = 0;
  bool ready = false;
  bool isRestartOk = false;
  CORETIMER_DelayMs (5);

  if (size > 128)
    {
      /* Max Size Buffer 128  Bytes*/
      return 0;
    }

  ready = I2C_start ();
  if (!ready)
    {
      /* Not Ready */
      return 0;
    }
  else
    {

      /* Send EPPROM address, read/write bit not set (AD + W) */
      I2C_raw_write ((slaveAddress << 1), false);
      I2C_raw_write ((memLocation >> 8)&0xFF, false); // MSB_ADDRESS
      I2C_raw_write ((memLocation & 0x00FF), false); // LSB_ADDRESS

      /* Send repeated start condition */
      isRestartOk = I2C_restart ();
      if (!isRestartOk)
        {
          return 0;
        }
      else
        {
          /* Send SLAVE's address, read/write bit set (AD + R) */
          I2C_raw_write (((EEPROM_SLAVE_ADD << 1) | 0b1), false);

          /* Read value from the I2C bus */
          for (uint8_t index = 0; index < size; index++)
            {
              if (index == (size - 1))
                {

                  /* send NACK on last byte */
                  I2C_raw_read (&data[index], false);
                  I2C_stop (); /* Send stop condition */
                  writtenByte = index + 1;
                }
              else
                {
                  /* send ACK */
                  I2C_raw_read (&data[index], true);
                  writtenByte = index + 1;
                }
            }
        }
      return writtenByte;
    }
}

uint8_t
i2c_LCD_write (uint8_t slaveAddress,unsigned char* data)
{
  bool ready = false;
  CORETIMER_DelayMs (1);

  ready = I2C_start ();
  if (!ready)
    {
      /* Not Ready */
      return 0;
    }
  else
    { /* Send SLAVE address, read/write bit not set (AD + W) */
      I2C_raw_write (slaveAddress << 1, false);

      /* Send the register address (RA) */
      I2C_raw_write ((data[0]&0xFF), false);

      /* Send stop condition */
      I2C_stop ();
      return 1;
    }
}

