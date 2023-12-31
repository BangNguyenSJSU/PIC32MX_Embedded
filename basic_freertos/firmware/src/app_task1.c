/*******************************************************************************
 * Copyright (C) 2020 Microchip Technology Inc. and its subsidiaries.
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

/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_task1.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app_task1.h"
#include "definitions.h"
#include "config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.h"
#include "USER_DEFINITION_CONFIG/SYSTEM_DEF.h"
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_TASK1_Initialize function.

    Application strings and buffers are be defined outside this structure.
 */

static SemaphoreHandle_t switchPressToLCDSemaphore;
APP_TASK1_DATA app_task1Data;

#define LCD_I2C_SLAVE_ADD 0x27
#define LCD_MAX_COLLUM 20u
#define LCD_MAX_ROW 4u
#define I2C_SPEED_HZ 100000U

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
 */
static void SwitchPressLCD_Handler(CN_PIN cnPin, uintptr_t context) {
    BaseType_t xHigherPriorityTaskWoken;

    /* Unblock the task by releasing the semaphore. */
    xSemaphoreGiveFromISR(switchPressToLCDSemaphore, &xHigherPriorityTaskWoken);

    /* If xHigherPriorityTaskWoken was set to true you
    we should yield */

    portEND_SWITCHING_ISR(xHigherPriorityTaskWoken);
}
// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
 */


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_TASK1_Initialize ( void )

  Remarks:
    See prototype in app_task1.h.
 */

void APP_TASK1_Initialize(void) {
    /* Place the App state machine in its initial state. */
    app_task1Data.state = APP_TASK1_STATE_INIT;

    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
    LCD_init(LCD_I2C_SLAVE_ADD, LCD_MAX_COLLUM, LCD_MAX_ROW, I2C_SPEED_HZ);
    LCD_SET_BACK_LIGHT(true);
    GPIO_PinInterruptCallbackRegister(CN19_PIN, SwitchPressLCD_Handler, (uintptr_t)NULL);
     GPIO_PinInterruptEnable(CN19_PIN);
}

/******************************************************************************
  Function:
    void APP_TASK1_Tasks ( void )

  Remarks:
    This task periodically runs every 1 second and toggles LED1
 */

void APP_TASK1_Tasks(void) {
 
    switchPressToLCDSemaphore = xSemaphoreCreateBinary();

 
    while (1) {
            LED1_Toggle();
         LCD_PRINT_STRING("RTOS !!", 0, 0, 3);
        if(xSemaphoreTakeFromISR( switchPressToLCDSemaphore, pdFALSE ) == pdTRUE)
        {
             LCD_PRINT_STRING("SW_ON !!",5, 2, 3);
             LED2_Toggle();
        }
        else
        {
             LCD_PRINT_STRING("SW_OFF !!",5, 2, 3);
        }

    
       
        /* Blink LED at every 1000 ms. Meanwhile allow other ready tasks to run */
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}


/*******************************************************************************
 End of File
 */
