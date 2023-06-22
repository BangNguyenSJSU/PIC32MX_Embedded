#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include "HELPER_FUNCTION.h"

void convert_uint16_to_uint8(uint16_t input, uint8_t *high_byte, uint8_t *low_byte) {
    *high_byte = (input >> 8) & 0xFF;
    *low_byte = input & 0xFF;
}

void convert_uint8_to_uint16(uint16_t *output, uint8_t high_byte, uint8_t low_byte) 
{
 *output = (high_byte << 8) |low_byte;
}

void convert_uint16_to_uint32(uint32_t *output, uint16_t high_byte, uint16_t low_byte)
{
 *output = (high_byte << 16)|low_byte;
}

void convert_uint32_to_uint16(uint32_t input, uint16_t *high_byte, uint16_t *low_byte)
{
  *low_byte = (input >> 16) & 0xFFFF;
  *high_byte = input & 0xFFFF;
}

//void
//delay_coreTimer_us(unsigned int us) {
//    // Convert microseconds us into how many clock ticks it will take
//    us *= SYS_CLOCK / 1000000 / 2; // Core Timer updates every 2 ticks
//    _CP0_SET_COUNT(0); // Set Core Timer count to 0
//    while (us > _CP0_GET_COUNT()); // Wait until Core Timer count reaches the number we calculated earlier
//}
//
//void delay_coreTimer_ms(unsigned int ms) {
//    // Convert milliseconds ms into how many clock ticks it will take
//    ms *= SYS_CLOCK / 1000 / 2; // Core Timer updates every 2 ticks
//    uint32_t start_count = _CP0_GET_COUNT(); // Get the current Core Timer count
//
//    while (ms > (_CP0_GET_COUNT() - start_count)) {
//        // Wait until the difference between the current Core Timer count
//    }
//}

uint16_t Modbus_CRC16(uint8_t* buffer, uint16_t buffer_length)
{
    uint16_t crc = 0xFFFF;
    for (int pos = 0; pos < buffer_length; pos++)
    {
        crc ^= (uint16_t)buffer[pos];  // XOR byte into least significant byte of crc

        for (int i = 8; i != 0; i--)   // Loop over each bit
        { 
            if ((crc & 0x0001) != 0)   // If the LSB is set
            {
                crc >>= 1;              // Shift right and XOR 0xA001
                crc ^= 0xA001;
            }
            else                        // Else LSB is not set
                crc >>= 1;              // Just shift right
        }
    }
    return crc;
}