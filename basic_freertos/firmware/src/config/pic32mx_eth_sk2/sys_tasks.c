/*******************************************************************************
 System Tasks File

  File Name:
    tasks.c

  Summary:
    This file contains source code necessary to maintain system's polled tasks.

  Description:
    This file contains source code necessary to maintain system's polled tasks.
    It implements the "SYS_Tasks" function that calls the individual "Tasks"
    functions for all polled MPLAB Harmony modules in the system.

  Remarks:
    This file requires access to the systemObjects global data structure that
    contains the object handles to all MPLAB Harmony module objects executing
    polled in the system.  These handles are passed into the individual module
    "Tasks" functions to identify the instance of the module to maintain.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
 * Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
 *
 * Subject to your compliance with these terms, you may use Microchip software
 * and any derivatives exclusively with Microchip products. It is your
 * responsibility to comply with third party license terms applicable to your
 * use of third party software (including open source software) that may
 * accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
 * PARTICULAR PURPOSE.
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
 * ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "definitions.h"
#include "sys_tasksObject.h"
#include "MODBUS_REGISTERS_MAP.h"


// *****************************************************************************
// *****************************************************************************
// Section: RTOS "Tasks" Routine
// *****************************************************************************
// *****************************************************************************

static void
LCD_Task1_Tasks (void *pvParameters)
{
  LCD_TASK1_Task_Running ();
}

static void
Uart_Dma_Rx_Tasks (void *pvParameters)
{
  UART_DMA_RX_Task_Running ();
}

static void
MODBUS_REGISTER_MAP_WR_RequestTasks (void *pvParameters)
{
  MODBUS_WR_Request_Task_Runing ();
}

static void
MODBUS_REGISTER_MAP_RD_RequestTasks (void *pvParameters)
{
  MODBUS_RD_Request_Task_Runing ();
}




// *****************************************************************************
// *****************************************************************************
// Section: System "Tasks" Routine
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void SYS_Tasks ( void )

  Remarks:
    See prototype in system/common/sys_module.h.
 */
void
SYS_Tasks (void)
{
  /* Maintain system services */

  // Create a queue to handle register commands
  modbusWrittenQueue = xQueueCreate (128, sizeof (MODBUS_REISTER_INFO));
  if (modbusWrittenQueue == NULL)
    {
      // Handle error in queue creation
    }
  modbusReadQueue = xQueueCreate (10, sizeof (MODBUS_REISTER_INFO));
  if (modbusReadQueue == NULL)
    {
      // Handle error in queue creation
    }

  /* Maintain Device Drivers */


  /* Maintain Middleware & Other Libraries */
  
  /* Maintain the application's state machine. */
  
  
  //    (void) xTaskCreate((TaskFunction_t) LCD_Task1_Tasks,
  //                "LCD_Tasks",
  //                1024,
  //                NULL,
  //                1,
  //                &xLCD_TASK1_TaskObject);

  (void) xTaskCreate ((TaskFunction_t) Uart_Dma_Rx_Tasks,
                      "UART_RX_Tasks",
                      1024,
                      NULL,
                      2,
                      &xUART_DMA_RX_TaskObject);
  (void) xTaskCreate ((TaskFunction_t) MODBUS_REGISTER_MAP_WR_RequestTasks,
                      "ModbusWRTasks",
                      1024,
                      NULL,
                      1,
                      &xMODBUS_REGISTER_WR_TaskObject);
  
  (void) xTaskCreate ((TaskFunction_t) MODBUS_REGISTER_MAP_RD_RequestTasks,
                      "ModbuRDTasks",
                      1024,
                      NULL,
                      1,
                      &xMODBUS_REGISTER_RD_TaskObject);




  /* Start RTOS Scheduler. */

  /**********************************************************************
   * Create all Threads for APP Tasks before starting FreeRTOS Scheduler *
   ***********************************************************************/
  vTaskStartScheduler (); /* This function never returns. */

}

/*******************************************************************************
 End of File
 */

