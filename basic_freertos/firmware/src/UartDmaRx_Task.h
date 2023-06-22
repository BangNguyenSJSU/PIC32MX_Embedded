/* 
 * File:   UartDmaRx_Task.h
 * Author: bang.nguyen
 *
 * Created on June 22, 2023, 2:05 PM
 */

#ifndef UARTDMARX_TASK_H
#define	UARTDMARX_TASK_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>

#ifdef	__cplusplus
extern "C" {
#endif

    void UART_DMA_RX_Task_Initialize (void);
    void UART_DMA_RX_Task_Running (void);


#ifdef	__cplusplus
}
#endif

#endif	/* UARTDMARX_TASK_H */

