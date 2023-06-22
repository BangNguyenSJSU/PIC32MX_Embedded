#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mx_eth_sk2.mk)" "nbproject/Makefile-local-pic32mx_eth_sk2.mk"
include nbproject/Makefile-local-pic32mx_eth_sk2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mx_eth_sk2
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mx_eth_sk2/bsp/bsp.c ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C2_PIC32MX.c ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c ../src/config/pic32mx_eth_sk2/peripheral/UART_baremetal/UART2_dma_PIC32MX.c ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c ../src/config/pic32mx_eth_sk2/initialization.c ../src/config/pic32mx_eth_sk2/interrupts.c ../src/config/pic32mx_eth_sk2/interrupts_a.S ../src/config/pic32mx_eth_sk2/exceptions.c ../src/config/pic32mx_eth_sk2/freertos_hooks.c ../src/config/pic32mx_eth_sk2/sys_tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/USER_HELPER/HELPER_FUNCTION.c ../src/main.c ../src/LCD_Task1.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1123471642/bsp.o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ${OBJECTDIR}/_ext/895125403/plib_evic.o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ${OBJECTDIR}/_ext/111649226/initialization.o ${OBJECTDIR}/_ext/111649226/interrupts.o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ${OBJECTDIR}/_ext/111649226/exceptions.o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ${OBJECTDIR}/_ext/111649226/sys_tasks.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/951553248/port.o ${OBJECTDIR}/_ext/951553248/port_asm.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1123471642/bsp.o.d ${OBJECTDIR}/_ext/467495608/osal_freertos.o.d ${OBJECTDIR}/_ext/1968539896/plib_clk.o.d ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d ${OBJECTDIR}/_ext/895164091/plib_dmac.o.d ${OBJECTDIR}/_ext/895125403/plib_evic.o.d ${OBJECTDIR}/_ext/895071575/plib_gpio.o.d ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o.d ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d ${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d ${OBJECTDIR}/_ext/894668632/plib_uart2.o.d ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o.d ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d ${OBJECTDIR}/_ext/1844760744/sys_reset.o.d ${OBJECTDIR}/_ext/111649226/initialization.o.d ${OBJECTDIR}/_ext/111649226/interrupts.o.d ${OBJECTDIR}/_ext/111649226/interrupts_a.o.d ${OBJECTDIR}/_ext/111649226/exceptions.o.d ${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d ${OBJECTDIR}/_ext/111649226/sys_tasks.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/951553248/port.o.d ${OBJECTDIR}/_ext/951553248/port_asm.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1123471642/bsp.o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ${OBJECTDIR}/_ext/895125403/plib_evic.o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ${OBJECTDIR}/_ext/111649226/initialization.o ${OBJECTDIR}/_ext/111649226/interrupts.o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ${OBJECTDIR}/_ext/111649226/exceptions.o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ${OBJECTDIR}/_ext/111649226/sys_tasks.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/951553248/port.o ${OBJECTDIR}/_ext/951553248/port_asm.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o

# Source Files
SOURCEFILES=../src/config/pic32mx_eth_sk2/bsp/bsp.c ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C2_PIC32MX.c ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c ../src/config/pic32mx_eth_sk2/peripheral/UART_baremetal/UART2_dma_PIC32MX.c ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c ../src/config/pic32mx_eth_sk2/initialization.c ../src/config/pic32mx_eth_sk2/interrupts.c ../src/config/pic32mx_eth_sk2/interrupts_a.S ../src/config/pic32mx_eth_sk2/exceptions.c ../src/config/pic32mx_eth_sk2/freertos_hooks.c ../src/config/pic32mx_eth_sk2/sys_tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/USER_HELPER/HELPER_FUNCTION.c ../src/main.c ../src/LCD_Task1.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mx_eth_sk2.mk dist/${CND_CONF}/${IMAGE_TYPE}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32mx_eth_sk2\p32MX795F512L.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/111649226/interrupts_a.o: ../src/config/pic32mx_eth_sk2/interrupts_a.S  .generated_files/flags/pic32mx_eth_sk2/265dae2766efc40ad0b2ffe3a76773baf7f345ca .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.ok ${OBJECTDIR}/_ext/111649226/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ../src/config/pic32mx_eth_sk2/interrupts_a.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d" "${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553248/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/pic32mx_eth_sk2/66a635dc37877ea3d5bd8c71d40a4b93e6db6bca .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.ok ${OBJECTDIR}/_ext/951553248/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/951553248/port_asm.o.d"  -o ${OBJECTDIR}/_ext/951553248/port_asm.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553248/port_asm.o.d" "${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/111649226/interrupts_a.o: ../src/config/pic32mx_eth_sk2/interrupts_a.S  .generated_files/flags/pic32mx_eth_sk2/ca71c34c2273972bed9b666f624efcee9e7e10cb .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.ok ${OBJECTDIR}/_ext/111649226/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ../src/config/pic32mx_eth_sk2/interrupts_a.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d",--gdwarf-2,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d" "${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553248/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/pic32mx_eth_sk2/88bb618c07740d21af84b3dc05eead9a7da1543f .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.ok ${OBJECTDIR}/_ext/951553248/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/951553248/port_asm.o.d"  -o ${OBJECTDIR}/_ext/951553248/port_asm.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d",--gdwarf-2,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553248/port_asm.o.d" "${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1123471642/bsp.o: ../src/config/pic32mx_eth_sk2/bsp/bsp.c  .generated_files/flags/pic32mx_eth_sk2/c88e6dbcfe4d1372e4ae967b85e9e47a57ee5183 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1123471642" 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1123471642/bsp.o.d" -o ${OBJECTDIR}/_ext/1123471642/bsp.o ../src/config/pic32mx_eth_sk2/bsp/bsp.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/467495608/osal_freertos.o: ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c  .generated_files/flags/pic32mx_eth_sk2/25bd23227535cd4ea5160d932b6df3c03b3956a2 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/467495608" 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/467495608/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968539896/plib_clk.o: ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx_eth_sk2/2ed4a6a66c3e82673ac544d6a6d2732f3bb4d08f .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1968539896" 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968539896/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1824765036/plib_coretimer.o: ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mx_eth_sk2/9f616a10f1a598673079ace37de3d369b6e4eb .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1824765036" 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895164091/plib_dmac.o: ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c  .generated_files/flags/pic32mx_eth_sk2/a68ee7a7d761eb641b2d90300cbaac6a9edd0d04 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/895164091" 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895164091/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895125403/plib_evic.o: ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx_eth_sk2/88b127da49fb5215c24c3446121dfc01f82768d5 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/895125403" 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895125403/plib_evic.o.d" -o ${OBJECTDIR}/_ext/895125403/plib_evic.o ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895071575/plib_gpio.o: ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx_eth_sk2/fa89fe1e94fe7d7e9e8bb61b65016d82c473e21f .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/895071575" 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895071575/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C_LCD.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c  .generated_files/flags/pic32mx_eth_sk2/14e5d6792ca1bd6ae36264ae416f3cd5c972eeb7 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C2_PIC32MX.c  .generated_files/flags/pic32mx_eth_sk2/ce140e234ea0ba6bfe586d18a049d91c9a9fca3 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C2_PIC32MX.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968523521/plib_tmr2.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mx_eth_sk2/af07df6b294e89831f9427c4f958f73d48d022c4 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1968523521" 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894686958/plib_tmr1.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mx_eth_sk2/fee8b4c0db0e4a1c876131bae56e205ed5699ff1 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/894686958" 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894668632/plib_uart2.o: ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mx_eth_sk2/ec7e8c0bc3967b2460181eba51f2338b58a20b82 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/894668632" 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894668632/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o: ../src/config/pic32mx_eth_sk2/peripheral/UART_baremetal/UART2_dma_PIC32MX.c  .generated_files/flags/pic32mx_eth_sk2/a64a8162d796d936fc8084dc2ab85630fc67d423 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1880771394" 
	@${RM} ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o.d" -o ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o ../src/config/pic32mx_eth_sk2/peripheral/UART_baremetal/UART2_dma_PIC32MX.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1603735184/xc32_monitor.o: ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c  .generated_files/flags/pic32mx_eth_sk2/85976e2455dde0be4f9feadba4214eb16a6a4002 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1603735184" 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1844760744/sys_reset.o: ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c  .generated_files/flags/pic32mx_eth_sk2/6abad43c883b05815fcd736ed386a6a481cecd00 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1844760744" 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844760744/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/initialization.o: ../src/config/pic32mx_eth_sk2/initialization.c  .generated_files/flags/pic32mx_eth_sk2/eff9c769c26a39a2ddbd44724f2d93d3773ccbf7 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/initialization.o.d" -o ${OBJECTDIR}/_ext/111649226/initialization.o ../src/config/pic32mx_eth_sk2/initialization.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/interrupts.o: ../src/config/pic32mx_eth_sk2/interrupts.c  .generated_files/flags/pic32mx_eth_sk2/264a2db1797f5eabf8d1f4727298dab0e408d8a .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts.o.d" -o ${OBJECTDIR}/_ext/111649226/interrupts.o ../src/config/pic32mx_eth_sk2/interrupts.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/exceptions.o: ../src/config/pic32mx_eth_sk2/exceptions.c  .generated_files/flags/pic32mx_eth_sk2/2f2cf17c7179d27cc839685b9495b100470b6e8e .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/exceptions.o.d" -o ${OBJECTDIR}/_ext/111649226/exceptions.o ../src/config/pic32mx_eth_sk2/exceptions.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/freertos_hooks.o: ../src/config/pic32mx_eth_sk2/freertos_hooks.c  .generated_files/flags/pic32mx_eth_sk2/c70b25acc41cb8cff9cf79a881d5f3d39841c69d .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ../src/config/pic32mx_eth_sk2/freertos_hooks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/sys_tasks.o: ../src/config/pic32mx_eth_sk2/sys_tasks.c  .generated_files/flags/pic32mx_eth_sk2/23eaa31b388b184092e2052d29b7eac35eff2412 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/sys_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/sys_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/sys_tasks.o.d" -o ${OBJECTDIR}/_ext/111649226/sys_tasks.o ../src/config/pic32mx_eth_sk2/sys_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/pic32mx_eth_sk2/73f46139cd639162ee4102293c730fe619b2a395 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/951553248/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/pic32mx_eth_sk2/117a0bd80a87e475cab2e68bffe9f9a92fcd2d51 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/951553248/port.o.d" -o ${OBJECTDIR}/_ext/951553248/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/pic32mx_eth_sk2/1834061a03c9e66f29ab9507ec4abe551cb0d4f8 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/pic32mx_eth_sk2/68bb79c81c15e979e8c632abf87ddca0f7205131 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/pic32mx_eth_sk2/3e8f34b67361d4b5e6ab33bcea9986a44675d257 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/pic32mx_eth_sk2/e2c81e386fa714fbac81a2a01a41382ffa3e93b .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/pic32mx_eth_sk2/31ae9ebba437bdcea6adf42cac2587a9ae322c1a .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/pic32mx_eth_sk2/3f2e9b54cc18279fab77fe6a4d8a2dfcae391b48 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/pic32mx_eth_sk2/ad6c7b1af00fe960536338fb0e29a9b67f0e0fca .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o: ../src/USER_HELPER/HELPER_FUNCTION.c  .generated_files/flags/pic32mx_eth_sk2/62875ed3ab45831d5bdb6a8411c493c1742f446e .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/743442264" 
	@${RM} ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d 
	@${RM} ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d" -o ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o ../src/USER_HELPER/HELPER_FUNCTION.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx_eth_sk2/59748fbdd3c80dde0d4c2e4281c78654910eec87 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/LCD_Task1.o: ../src/LCD_Task1.c  .generated_files/flags/pic32mx_eth_sk2/f6564c4bc9dd5aa235802aad20e64ba6c3eba09b .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d" -o ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o ../src/LCD_Task1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1123471642/bsp.o: ../src/config/pic32mx_eth_sk2/bsp/bsp.c  .generated_files/flags/pic32mx_eth_sk2/94c5d7e52e36e7d9f678528d0f94f58a4cf044e7 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1123471642" 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1123471642/bsp.o.d" -o ${OBJECTDIR}/_ext/1123471642/bsp.o ../src/config/pic32mx_eth_sk2/bsp/bsp.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/467495608/osal_freertos.o: ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c  .generated_files/flags/pic32mx_eth_sk2/2c22cf48c7b66df64fc61750287456dc5e89980e .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/467495608" 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/467495608/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968539896/plib_clk.o: ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx_eth_sk2/2e48d449d1ac3c3fd45da04ce168bd24c748122f .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1968539896" 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968539896/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1824765036/plib_coretimer.o: ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mx_eth_sk2/d02b612e551573bb3af5d2d8a4e01e3ed76de55a .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1824765036" 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895164091/plib_dmac.o: ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c  .generated_files/flags/pic32mx_eth_sk2/b8ea8de056f51962a41e4f2a0d03e1b8b82419fd .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/895164091" 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895164091/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895125403/plib_evic.o: ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx_eth_sk2/a1e3ae24b9d0bde6485b900eb9b96b1aefef688e .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/895125403" 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895125403/plib_evic.o.d" -o ${OBJECTDIR}/_ext/895125403/plib_evic.o ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895071575/plib_gpio.o: ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx_eth_sk2/ad6f379ac4e6cded1d5cf03ea59ac174f3799789 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/895071575" 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895071575/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C_LCD.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c  .generated_files/flags/pic32mx_eth_sk2/b2a861f5caff199b0efa74b1e78938d40451e4eb .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C2_PIC32MX.c  .generated_files/flags/pic32mx_eth_sk2/bfffb279bf2eaba8ea51a52bc3ae0cabfad4344a .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C2_PIC32MX.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968523521/plib_tmr2.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mx_eth_sk2/4aa1e3eeb3ea8d2edddb1a55205553150ea56cc8 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1968523521" 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894686958/plib_tmr1.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mx_eth_sk2/f7e64d82f3cad0a0b5cdb634c58b74b37895632e .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/894686958" 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894668632/plib_uart2.o: ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mx_eth_sk2/44290d0209a5367b6227c14418862aeed0c2e7c0 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/894668632" 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894668632/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o: ../src/config/pic32mx_eth_sk2/peripheral/UART_baremetal/UART2_dma_PIC32MX.c  .generated_files/flags/pic32mx_eth_sk2/99447e154140ef5e7600105c58a2377f2654d231 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1880771394" 
	@${RM} ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o.d" -o ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o ../src/config/pic32mx_eth_sk2/peripheral/UART_baremetal/UART2_dma_PIC32MX.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1603735184/xc32_monitor.o: ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c  .generated_files/flags/pic32mx_eth_sk2/1e6eff3f8c1539c28806054fca8475e8ad4debbe .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1603735184" 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1844760744/sys_reset.o: ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c  .generated_files/flags/pic32mx_eth_sk2/6295feb9bec04eefc4da77e90de449b4ca0eb6bd .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1844760744" 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844760744/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/initialization.o: ../src/config/pic32mx_eth_sk2/initialization.c  .generated_files/flags/pic32mx_eth_sk2/1a8f5312d9928fb0c43c61a9b52ee4d8ad202771 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/initialization.o.d" -o ${OBJECTDIR}/_ext/111649226/initialization.o ../src/config/pic32mx_eth_sk2/initialization.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/interrupts.o: ../src/config/pic32mx_eth_sk2/interrupts.c  .generated_files/flags/pic32mx_eth_sk2/5b27340c46289ba768baf07a4ffe931ef7791b32 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts.o.d" -o ${OBJECTDIR}/_ext/111649226/interrupts.o ../src/config/pic32mx_eth_sk2/interrupts.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/exceptions.o: ../src/config/pic32mx_eth_sk2/exceptions.c  .generated_files/flags/pic32mx_eth_sk2/f63f08b33939f85445e514eba957ff5756b05f86 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/exceptions.o.d" -o ${OBJECTDIR}/_ext/111649226/exceptions.o ../src/config/pic32mx_eth_sk2/exceptions.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/freertos_hooks.o: ../src/config/pic32mx_eth_sk2/freertos_hooks.c  .generated_files/flags/pic32mx_eth_sk2/82e7fe64e6bbd241ff4f99968d4a8eca5943eed6 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ../src/config/pic32mx_eth_sk2/freertos_hooks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/sys_tasks.o: ../src/config/pic32mx_eth_sk2/sys_tasks.c  .generated_files/flags/pic32mx_eth_sk2/ca30f83ec258acdab014792d77c8e532c7fadc03 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/sys_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/sys_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/sys_tasks.o.d" -o ${OBJECTDIR}/_ext/111649226/sys_tasks.o ../src/config/pic32mx_eth_sk2/sys_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/pic32mx_eth_sk2/e0cdcecc04fd467ae6185a1910ac1499a68aaece .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/951553248/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/pic32mx_eth_sk2/3a72e0d8c675647d8208f5d0434ea8767559afae .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/951553248/port.o.d" -o ${OBJECTDIR}/_ext/951553248/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/pic32mx_eth_sk2/520d38b3a3bcda245f4a7dc484abc36a5c0379d6 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/pic32mx_eth_sk2/eea15f193b03d092de40c5342f34f29889b06310 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/pic32mx_eth_sk2/cd7da35497c1774ff7d7b516533f597161d621e8 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/pic32mx_eth_sk2/90ea87c62d51b91d3c90785a5dfea205b51d86d1 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/pic32mx_eth_sk2/e99fc407f63ebf1a2daf80027cfc5f8dc37b13e7 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/pic32mx_eth_sk2/65d6fd44b719729732e332076ea8011714b49064 .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/pic32mx_eth_sk2/a96e67cfbe2064a88de133b0efdd67615f3fd1dd .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o: ../src/USER_HELPER/HELPER_FUNCTION.c  .generated_files/flags/pic32mx_eth_sk2/7f4fa855c824cdcb5d50086107501a91bd4d6a9e .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/743442264" 
	@${RM} ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d 
	@${RM} ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d" -o ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o ../src/USER_HELPER/HELPER_FUNCTION.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx_eth_sk2/8a0c762943d68b7980bb3c199aec7c47efdcb7c .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/LCD_Task1.o: ../src/LCD_Task1.c  .generated_files/flags/pic32mx_eth_sk2/34c436fee147e542d248bb797806f9ef63c8719e .generated_files/flags/pic32mx_eth_sk2/25cf332145e109ecc94cb8c88ed46e464b66686
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d" -o ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o ../src/LCD_Task1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mx_eth_sk2/p32MX795F512L.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mx_eth_sk2/p32MX795F512L.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mx_eth_sk2
	${RM} -r dist/pic32mx_eth_sk2

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
