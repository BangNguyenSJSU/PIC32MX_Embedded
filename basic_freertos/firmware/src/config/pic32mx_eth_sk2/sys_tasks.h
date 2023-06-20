/*******************************************************************************
 System Tasks Header File

  File Name:
    sys_tasks.h

  Summary:
    This file contains declarations for task handles.

  Description:
    Task handles declared in this header file can be used by the application
    to control the behavior of the tasks.

  Remarks:
    None
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2023 Microchip Technology Inc. and its subsidiaries.
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

#ifndef SYS_TASKS_H
#define SYS_TASKS_H

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "configuration.h"
#include "definitions.h"

// *****************************************************************************
// *****************************************************************************
// Section: RTOS "Tasks" Handles
// *****************************************************************************
// *****************************************************************************
/* Declaration of  APP_TASK1_Tasks task handle */
extern TaskHandle_t xAPP_TASK1_Tasks;

/* Declaration of  APP_TASK2_Tasks task handle */
extern TaskHandle_t xAPP_TASK2_Tasks;

/* Declaration of  APP_TASK3_Tasks task handle */
extern TaskHandle_t xAPP_TASK3_Tasks;

/* Declaration of  APP3_Tasks task handle */
extern TaskHandle_t xAPP3_Tasks;

/* Declaration of  APP4_Tasks task handle */
extern TaskHandle_t xAPP4_Tasks;

/* Declaration of  APP5_Tasks task handle */
extern TaskHandle_t xAPP5_Tasks;




#endif //SYS_TASKS_H