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


    /* Handle the message Byte from UART (dma ISR) */
    void UART_DMA_RX_Task_Initialize(void);
    void UART_DMA_RX_Task_Running(void);

    /* Handle Register Table */
    void MODBUS_REGISTER_MAP_Task_Initialize(void);
    void MODBUS_WR_Request_Task_Runing(void);
    void MODBUS_RD_Request_Task_Runing(void);



#ifdef	__cplusplusMODBUS_REGISTER_OPERATE_Task_Initialize
}
#endif

#endif	/* UARTDMARX_TASK_H */

