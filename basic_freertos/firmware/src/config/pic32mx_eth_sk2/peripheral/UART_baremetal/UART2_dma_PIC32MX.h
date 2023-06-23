/* 
 * File:   UART2_dma_PIC32MX.h
 * Author: Owner
 *
 * Created on June 20, 2023, 6:20 PM
 */

#ifndef UART2_DMA_PIC32MX_H
#define	UART2_DMA_PIC32MX_H

#include <stddef.h>
#include <stdbool.h>
#include <device.h>
#include "../uart/plib_uart_common.h"

#ifdef	__cplusplus
extern "C" {
#endif

#define BUFF_DMA_SIZE 256u
#define BUFF_INDX_FUNC_CODE 1u
#define BUFF_INDX_BYTE_COUNT 6U
#define READ_FUNC_CODE 0x03
#define WRITE_FUNC_CODE 0x10

    typedef struct {
        unsigned char __attribute__((coherent)) data[BUFF_DMA_SIZE];
        size_t buff_head_Index;
        size_t buff_capacity; 
        volatile bool IsDONE;
        size_t writeDataLen;
        size_t expectedTotalRxLen;
    } UART_RX_DMA_CtrlObj;

    
    /*----------------------------------------------------*/
    void UART2_forDMA_Initialize(uint32_t baudRate, uint32_t PBCLK);
    

    bool UART2_TransmitComplete(void);
    /* ------------------- UART using DMA ------------------- */
    void UART2_DMA_RX_Initialize(void);
    UART_RX_DMA_CtrlObj* UART2_Get_CtrlObjectPtr(void);
    void UART2_DMA_RX_Reset(void);
    size_t UART2_DMA_RX_GetBuffCapacityCounter(void);
    size_t UART2_DMA_RX_GetBuffIndexCounter(void);
    size_t UART2_DMA_RX_WriteDataLen(void);
    bool UART2_DMA_RX_isDONE(void);
    void UART_2_DMA_RX_2_InterruptHandler(void); // put inside DMA Interrupt

#ifdef	__cplusplus
}
#endif

#endif	/* UART2_DMA_PIC32MX_H */

