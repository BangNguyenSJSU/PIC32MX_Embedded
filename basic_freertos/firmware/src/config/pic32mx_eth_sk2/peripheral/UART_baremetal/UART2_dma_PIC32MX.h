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

#define BUFFER_DMA_SIZE 256u
#define BUFFER_INDX_FUNC_CODE 1u
#define BUFFER_INDEX_WRITTEN_BYTE_COUNT 6U
#define READ_FUNC_CODE 0x03
#define WRITE_FUNC_CODE 0x10

    typedef struct {
        unsigned char __attribute__((coherent)) data[BUFFER_DMA_SIZE];
        size_t buff_head_Index;
        size_t buff_capacity; 
        volatile bool IsDONE;
        size_t writeDataLen;
        size_t expectedTotalRxLen;
    } UART_RX_DMA_CtrlObj;

    /*----------------------------------------------------*/
    
    typedef struct
{
    uint8_t *               txBuffer;
    size_t                  txSize;
    size_t                  txProcessedSize;
    UART_CALLBACK           txCallback;
    uintptr_t               txContext;
    bool                    txBusyStatus;

    uint8_t *               rxBuffer;
    size_t                  rxSize;
    size_t                  rxProcessedSize;
    UART_CALLBACK           rxCallback;
    uintptr_t               rxContext;
    bool                    rxBusyStatus;

    volatile UART_ERROR     errors;

} UART_dma_OBJECT ;
    /*----------------------------------------------------*/
    void UART2_forDMA_Initialize(uint32_t baudRate, uint32_t PBCLK);
    
//    bool UART2_Write(void *buffer, const size_t size);
//
//    bool UART2_Read(void *buffer, const size_t size);
//
//    void UART2_DMA_RX_Initialize(void);
//
//    UART_ERROR UART2_ErrorGet(void);
//
//    bool UART2_ReadIsBusy(void);
//
//    size_t UART2_ReadCountGet(void);
//
//    bool UART2_ReadAbort(void);
//
//    bool UART2_WriteIsBusy(void);
//
//    size_t UART2_WriteCountGet(void);
//
//    void UART2_WriteCallbackRegister(UART_CALLBACK callback, uintptr_t context);
//
//    void UART2_ReadCallbackRegister(UART_CALLBACK callback, uintptr_t context);

    bool UART2_TransmitComplete(void);
    /* ------------------- UART using DMA ------------------- */
    void UART2_DMA_RX_Initialize(void);
    UART_RX_DMA_CtrlObj* UART2_Get_CtrlObjectPtr(void);
    void UART2_DMA_RX_Reset(void);
    size_t UART2_DMA_RX_GetBuffCapacityCounter(void);
    size_t UART2_DMA_RX_GetBuffIndexCounter(void);
    bool UART2_DMA_RX_IsReadRequest(void);
    bool UART2_DMA_RX_IsWriteRequest(void);
    size_t UART2_DMA_RX_WriteDataLen(void);
    bool UART2_DMA_RX_isDONE(void);
    void UART_2_DMA_RX_2_InterruptHandler(void); // put inside DMA Interrupt

#ifdef	__cplusplus
}
#endif

#endif	/* UART2_DMA_PIC32MX_H */

