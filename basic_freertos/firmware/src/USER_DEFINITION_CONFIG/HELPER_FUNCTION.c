#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include "SYSTEM_DEF.h"

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

void
delay_coreTimer_us(unsigned int us) {
    // Convert microseconds us into how many clock ticks it will take
    us *= SYS_CLOCK / 1000000 / 2; // Core Timer updates every 2 ticks
    _CP0_SET_COUNT(0); // Set Core Timer count to 0
    while (us > _CP0_GET_COUNT()); // Wait until Core Timer count reaches the number we calculated earlier
}

void delay_coreTimer_ms(unsigned int ms) {
    // Convert milliseconds ms into how many clock ticks it will take
    ms *= SYS_CLOCK / 1000 / 2; // Core Timer updates every 2 ticks
    uint32_t start_count = _CP0_GET_COUNT(); // Get the current Core Timer count

    while (ms > (_CP0_GET_COUNT() - start_count)) {
        // Wait until the difference between the current Core Timer count
    }
}
