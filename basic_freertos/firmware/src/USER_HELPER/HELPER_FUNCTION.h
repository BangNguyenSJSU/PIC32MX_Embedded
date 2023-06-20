/* 
 * File:   SYSTEM_DEF.h
 * Author: bang.nguyen
 *
 * Created on April 25, 2023, 2:02 PM
 */

#ifndef SYSTEM_DEF_H
#define	SYSTEM_DEF_H

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdint.h>
#include <xc.h>
#include <sys/attribs.h>
#include "toolchain_specifics.h"

#ifdef	__cplusplus
extern "C" {
#endif

    /*---------------------- HELPER FUNCTION -----------------------*/

#define REVERSE_16BIT(x) ((((x) & 0xFF) << 8) | (((x) >> 8) & 0xFF))    

    void convert_uint16_to_uint8(uint16_t input, uint8_t *high_byte, uint8_t *low_byte);
    void convert_uint8_to_uint16(uint16_t *output, uint8_t high_byte, uint8_t low_byte);
    void convert_uint16_to_uint32(uint32_t *output, uint16_t high_byte, uint16_t low_byte);
    void convert_uint32_to_uint16(uint32_t input, uint16_t *high_byte, uint16_t *low_byte);


    /* ---- BLOCKING DELAY FROM CORE-TIMER ---- */
    void delay_coreTimer_us(unsigned int us);
    void delay_coreTimer_ms(unsigned int ms);
    

#ifdef	__cplusplus
}
#endif

#endif	/* SYSTEM_DEF_H */

