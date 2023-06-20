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
FINAL_IMAGE=${DISTDIR}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mx_eth_sk2/bsp/bsp.c ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c ../src/config/pic32mx_eth_sk2/system/dma/sys_dma.c ../src/config/pic32mx_eth_sk2/system/int/src/sys_int.c ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c ../src/config/pic32mx_eth_sk2/initialization.c ../src/config/pic32mx_eth_sk2/interrupts.c ../src/config/pic32mx_eth_sk2/interrupts_a.S ../src/config/pic32mx_eth_sk2/exceptions.c ../src/config/pic32mx_eth_sk2/freertos_hooks.c ../src/config/pic32mx_eth_sk2/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/app_task1.c ../src/app_task2.c ../src/app_task3.c ../src/app4.c ../src/app3.c ../src/app5.c ../src/USER_DEFINITION_CONFIG/HELPER_FUNCTION.c ../src/USER_DEFINITION_CONFIG/SYSTEM_DEF.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1123471642/bsp.o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ${OBJECTDIR}/_ext/895125403/plib_evic.o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ${OBJECTDIR}/_ext/1776862575/sys_dma.o ${OBJECTDIR}/_ext/147036963/sys_int.o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ${OBJECTDIR}/_ext/111649226/initialization.o ${OBJECTDIR}/_ext/111649226/interrupts.o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ${OBJECTDIR}/_ext/111649226/exceptions.o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ${OBJECTDIR}/_ext/111649226/tasks.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/951553248/port.o ${OBJECTDIR}/_ext/951553248/port_asm.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_task1.o ${OBJECTDIR}/_ext/1360937237/app_task2.o ${OBJECTDIR}/_ext/1360937237/app_task3.o ${OBJECTDIR}/_ext/1360937237/app4.o ${OBJECTDIR}/_ext/1360937237/app3.o ${OBJECTDIR}/_ext/1360937237/app5.o ${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o ${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1123471642/bsp.o.d ${OBJECTDIR}/_ext/467495608/osal_freertos.o.d ${OBJECTDIR}/_ext/1968539896/plib_clk.o.d ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d ${OBJECTDIR}/_ext/895164091/plib_dmac.o.d ${OBJECTDIR}/_ext/895125403/plib_evic.o.d ${OBJECTDIR}/_ext/895071575/plib_gpio.o.d ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o.d ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d ${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d ${OBJECTDIR}/_ext/894668632/plib_uart2.o.d ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d ${OBJECTDIR}/_ext/1776862575/sys_dma.o.d ${OBJECTDIR}/_ext/147036963/sys_int.o.d ${OBJECTDIR}/_ext/1844760744/sys_reset.o.d ${OBJECTDIR}/_ext/111649226/initialization.o.d ${OBJECTDIR}/_ext/111649226/interrupts.o.d ${OBJECTDIR}/_ext/111649226/interrupts_a.o.d ${OBJECTDIR}/_ext/111649226/exceptions.o.d ${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d ${OBJECTDIR}/_ext/111649226/tasks.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/951553248/port.o.d ${OBJECTDIR}/_ext/951553248/port_asm.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_task1.o.d ${OBJECTDIR}/_ext/1360937237/app_task2.o.d ${OBJECTDIR}/_ext/1360937237/app_task3.o.d ${OBJECTDIR}/_ext/1360937237/app4.o.d ${OBJECTDIR}/_ext/1360937237/app3.o.d ${OBJECTDIR}/_ext/1360937237/app5.o.d ${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o.d ${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1123471642/bsp.o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ${OBJECTDIR}/_ext/895125403/plib_evic.o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ${OBJECTDIR}/_ext/1776862575/sys_dma.o ${OBJECTDIR}/_ext/147036963/sys_int.o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ${OBJECTDIR}/_ext/111649226/initialization.o ${OBJECTDIR}/_ext/111649226/interrupts.o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ${OBJECTDIR}/_ext/111649226/exceptions.o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ${OBJECTDIR}/_ext/111649226/tasks.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/951553248/port.o ${OBJECTDIR}/_ext/951553248/port_asm.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_task1.o ${OBJECTDIR}/_ext/1360937237/app_task2.o ${OBJECTDIR}/_ext/1360937237/app_task3.o ${OBJECTDIR}/_ext/1360937237/app4.o ${OBJECTDIR}/_ext/1360937237/app3.o ${OBJECTDIR}/_ext/1360937237/app5.o ${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o ${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o

# Source Files
SOURCEFILES=../src/config/pic32mx_eth_sk2/bsp/bsp.c ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c ../src/config/pic32mx_eth_sk2/system/dma/sys_dma.c ../src/config/pic32mx_eth_sk2/system/int/src/sys_int.c ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c ../src/config/pic32mx_eth_sk2/initialization.c ../src/config/pic32mx_eth_sk2/interrupts.c ../src/config/pic32mx_eth_sk2/interrupts_a.S ../src/config/pic32mx_eth_sk2/exceptions.c ../src/config/pic32mx_eth_sk2/freertos_hooks.c ../src/config/pic32mx_eth_sk2/tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/app_task1.c ../src/app_task2.c ../src/app_task3.c ../src/app4.c ../src/app3.c ../src/app5.c ../src/USER_DEFINITION_CONFIG/HELPER_FUNCTION.c ../src/USER_DEFINITION_CONFIG/SYSTEM_DEF.c



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
	${MAKE}  -f nbproject/Makefile-pic32mx_eth_sk2.mk ${DISTDIR}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/111649226/interrupts_a.o: ../src/config/pic32mx_eth_sk2/interrupts_a.S  .generated_files/flags/pic32mx_eth_sk2/5311e134abc79dcda3928399b8a6476fe958a0a5 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.ok ${OBJECTDIR}/_ext/111649226/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ../src/config/pic32mx_eth_sk2/interrupts_a.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d" "${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553248/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/pic32mx_eth_sk2/83f3094fba3255058998ee772e69db42d00cf9a8 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.ok ${OBJECTDIR}/_ext/951553248/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/951553248/port_asm.o.d"  -o ${OBJECTDIR}/_ext/951553248/port_asm.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553248/port_asm.o.d" "${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/111649226/interrupts_a.o: ../src/config/pic32mx_eth_sk2/interrupts_a.S  .generated_files/flags/pic32mx_eth_sk2/b41994c28a9ac03c7ebef32ef309f31eb7fe1f3b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.ok ${OBJECTDIR}/_ext/111649226/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ../src/config/pic32mx_eth_sk2/interrupts_a.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d",--gdwarf-2,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d" "${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553248/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/pic32mx_eth_sk2/5910d6e2589ab1c5a79c6ad96c32f70b0c7fc7e0 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.ok ${OBJECTDIR}/_ext/951553248/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/951553248/port_asm.o.d"  -o ${OBJECTDIR}/_ext/951553248/port_asm.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d",--gdwarf-2,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553248/port_asm.o.d" "${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1123471642/bsp.o: ../src/config/pic32mx_eth_sk2/bsp/bsp.c  .generated_files/flags/pic32mx_eth_sk2/89c925239de900d0853c771b52fc970b081f1d08 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1123471642" 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1123471642/bsp.o.d" -o ${OBJECTDIR}/_ext/1123471642/bsp.o ../src/config/pic32mx_eth_sk2/bsp/bsp.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/467495608/osal_freertos.o: ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c  .generated_files/flags/pic32mx_eth_sk2/4737a93dcf4592b4ce246225ea4e6956975d464b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/467495608" 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/467495608/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968539896/plib_clk.o: ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx_eth_sk2/49875bc549657e2ee13955889439cfe0618b5534 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1968539896" 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968539896/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1824765036/plib_coretimer.o: ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mx_eth_sk2/e54f65d054c6cf1490bbb1cd5ca79b63fc784286 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1824765036" 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895164091/plib_dmac.o: ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c  .generated_files/flags/pic32mx_eth_sk2/346f03f7591e70f0d5093d37300461b31d5d4496 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895164091" 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895164091/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895125403/plib_evic.o: ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx_eth_sk2/f37dee85cad70ab7f0da159067777f896e38386c .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895125403" 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895125403/plib_evic.o.d" -o ${OBJECTDIR}/_ext/895125403/plib_evic.o ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895071575/plib_gpio.o: ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx_eth_sk2/a2bd3e59018f4cc0de8209dd1db0bb81364bf8b9 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895071575" 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895071575/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.c  .generated_files/flags/pic32mx_eth_sk2/84662f5a90a3ccbb1c1b9161bf44e792fa7872da .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C_LCD.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c  .generated_files/flags/pic32mx_eth_sk2/ec29ea4193c5db95599bdacdfa5b737e4d024e6c .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968523521/plib_tmr2.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mx_eth_sk2/97ed1dd917497bfad54f5a8d05488c094fbbebea .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1968523521" 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894686958/plib_tmr1.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mx_eth_sk2/ca2e3e780526449b449e2b8ef09d66ed8c67b4e8 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894686958" 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894668632/plib_uart2.o: ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mx_eth_sk2/2239fa6471c8e13a4aa3ecb176c537ed1647b9bc .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894668632" 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894668632/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1603735184/xc32_monitor.o: ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c  .generated_files/flags/pic32mx_eth_sk2/f749953f8db87e7ffea5f933944999f018351d8c .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1603735184" 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1776862575/sys_dma.o: ../src/config/pic32mx_eth_sk2/system/dma/sys_dma.c  .generated_files/flags/pic32mx_eth_sk2/e75642f860252033bed290e7cc06a1faf9b9c9ac .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1776862575" 
	@${RM} ${OBJECTDIR}/_ext/1776862575/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1776862575/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1776862575/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1776862575/sys_dma.o ../src/config/pic32mx_eth_sk2/system/dma/sys_dma.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/147036963/sys_int.o: ../src/config/pic32mx_eth_sk2/system/int/src/sys_int.c  .generated_files/flags/pic32mx_eth_sk2/8fdfa1ed9cbbaa947c3565a7b5645309ce5423fa .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/147036963" 
	@${RM} ${OBJECTDIR}/_ext/147036963/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/147036963/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/147036963/sys_int.o.d" -o ${OBJECTDIR}/_ext/147036963/sys_int.o ../src/config/pic32mx_eth_sk2/system/int/src/sys_int.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1844760744/sys_reset.o: ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c  .generated_files/flags/pic32mx_eth_sk2/6c55a7a45df97cb64ce08390a53fe6d544cbe017 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1844760744" 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844760744/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/initialization.o: ../src/config/pic32mx_eth_sk2/initialization.c  .generated_files/flags/pic32mx_eth_sk2/c4d4a589f8d86d07aae1b629e76c851e96017c91 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/initialization.o.d" -o ${OBJECTDIR}/_ext/111649226/initialization.o ../src/config/pic32mx_eth_sk2/initialization.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/interrupts.o: ../src/config/pic32mx_eth_sk2/interrupts.c  .generated_files/flags/pic32mx_eth_sk2/e9a2728f8d7e059e50d253e076b2599f3b839cad .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts.o.d" -o ${OBJECTDIR}/_ext/111649226/interrupts.o ../src/config/pic32mx_eth_sk2/interrupts.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/exceptions.o: ../src/config/pic32mx_eth_sk2/exceptions.c  .generated_files/flags/pic32mx_eth_sk2/be39fec85d66016a2b6df3e71ced719d59b87a9d .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/exceptions.o.d" -o ${OBJECTDIR}/_ext/111649226/exceptions.o ../src/config/pic32mx_eth_sk2/exceptions.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/freertos_hooks.o: ../src/config/pic32mx_eth_sk2/freertos_hooks.c  .generated_files/flags/pic32mx_eth_sk2/f170c579540c61aac12f6ac509cdecf4ec2b137e .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ../src/config/pic32mx_eth_sk2/freertos_hooks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/tasks.o: ../src/config/pic32mx_eth_sk2/tasks.c  .generated_files/flags/pic32mx_eth_sk2/7a7013c6178a60683c376db0c9914a5954bb65a2 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/tasks.o.d" -o ${OBJECTDIR}/_ext/111649226/tasks.o ../src/config/pic32mx_eth_sk2/tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/pic32mx_eth_sk2/952ec2f84ed6c3fa4fc07b1a66e196e69027b8fb .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/951553248/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/pic32mx_eth_sk2/cd2158c45ece9f0d4bffa8a59484d5973fd27a51 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/951553248/port.o.d" -o ${OBJECTDIR}/_ext/951553248/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/pic32mx_eth_sk2/de1bc57763269f54885458372e33bb135d47bbe1 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/pic32mx_eth_sk2/203faf493bbead708244f908edb645a917ecb468 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/pic32mx_eth_sk2/def68d7679a2d97c78ce3ca4c0632d89c19990fa .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/pic32mx_eth_sk2/797bd7f03a7d826f339b84546d653dfd3ccd0273 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/pic32mx_eth_sk2/37341b706002df33754248e0ef140475c2401721 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/pic32mx_eth_sk2/17a65de95ab69a560629943b9cf41e46ad955a4b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/pic32mx_eth_sk2/ab3a5de43360e1d71e9212a20c2db0a34355c5a9 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx_eth_sk2/9d0ca5f46b0151e4cb92a02516879658ca445675 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_task1.o: ../src/app_task1.c  .generated_files/flags/pic32mx_eth_sk2/df0de2180ea823d4783f2fbaf927f332676b8d0a .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_task1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_task1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_task1.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_task1.o ../src/app_task1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_task2.o: ../src/app_task2.c  .generated_files/flags/pic32mx_eth_sk2/d704f25f53a5d0a888915de53f5e3b4cab047e3e .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_task2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_task2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_task2.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_task2.o ../src/app_task2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_task3.o: ../src/app_task3.c  .generated_files/flags/pic32mx_eth_sk2/3043fd4879ea89c39d49867823e508465977a9e6 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_task3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_task3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_task3.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_task3.o ../src/app_task3.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app4.o: ../src/app4.c  .generated_files/flags/pic32mx_eth_sk2/60e48cdf671cc56d8e748e52f5ccc68381ceb9da .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app4.o.d" -o ${OBJECTDIR}/_ext/1360937237/app4.o ../src/app4.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app3.o: ../src/app3.c  .generated_files/flags/pic32mx_eth_sk2/90175f7356604e95722d49928ec12b423005ef10 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app3.o.d" -o ${OBJECTDIR}/_ext/1360937237/app3.o ../src/app3.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app5.o: ../src/app5.c  .generated_files/flags/pic32mx_eth_sk2/9b80996af08f9364693764109a7f2d57bd72687d .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app5.o.d" -o ${OBJECTDIR}/_ext/1360937237/app5.o ../src/app5.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o: ../src/USER_DEFINITION_CONFIG/HELPER_FUNCTION.c  .generated_files/flags/pic32mx_eth_sk2/bbf83beccad63451f4532c3810f0db1cbe378e1e .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/338807412" 
	@${RM} ${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o.d 
	@${RM} ${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o.d" -o ${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o ../src/USER_DEFINITION_CONFIG/HELPER_FUNCTION.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o: ../src/USER_DEFINITION_CONFIG/SYSTEM_DEF.c  .generated_files/flags/pic32mx_eth_sk2/3ec62dc6fbae101139e5ec6375409a8002c29766 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/338807412" 
	@${RM} ${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o.d 
	@${RM} ${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o.d" -o ${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o ../src/USER_DEFINITION_CONFIG/SYSTEM_DEF.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1123471642/bsp.o: ../src/config/pic32mx_eth_sk2/bsp/bsp.c  .generated_files/flags/pic32mx_eth_sk2/99bb6af488d11a49a1359de7d0c472dd13b60f41 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1123471642" 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1123471642/bsp.o.d" -o ${OBJECTDIR}/_ext/1123471642/bsp.o ../src/config/pic32mx_eth_sk2/bsp/bsp.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/467495608/osal_freertos.o: ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c  .generated_files/flags/pic32mx_eth_sk2/9149ab280ffe15e4371e74c1ee07fc9272890796 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/467495608" 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/467495608/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968539896/plib_clk.o: ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx_eth_sk2/ced9ab46d58a3347656882b6dec1357a2dc9f115 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1968539896" 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968539896/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1824765036/plib_coretimer.o: ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mx_eth_sk2/1b6254e4ea8a38d64d1297c2257dcb420b812582 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1824765036" 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895164091/plib_dmac.o: ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c  .generated_files/flags/pic32mx_eth_sk2/a948f1169c98edca832faaff2eeb3cb4395fcae9 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895164091" 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895164091/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895125403/plib_evic.o: ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx_eth_sk2/af5ee1743824861aa3c80b260917068a1e528319 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895125403" 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895125403/plib_evic.o.d" -o ${OBJECTDIR}/_ext/895125403/plib_evic.o ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895071575/plib_gpio.o: ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx_eth_sk2/ad5022f69f4d3cf2269097e02b580aa8ce89f183 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895071575" 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895071575/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.c  .generated_files/flags/pic32mx_eth_sk2/845ef98648f1a2c47f58ae75a145b5274aa9d91b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C_LCD.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c  .generated_files/flags/pic32mx_eth_sk2/750568002347c3fdde977f3c4567fd14d93389dd .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968523521/plib_tmr2.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mx_eth_sk2/389fb76299eed13da5c719b0a30a60b5cc0feedc .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1968523521" 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894686958/plib_tmr1.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mx_eth_sk2/5e2036c0963c901cebc320273fa4afb1478577d6 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894686958" 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894668632/plib_uart2.o: ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mx_eth_sk2/1295fd5a99a7a3f941f736fa2e363604196d3024 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894668632" 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894668632/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1603735184/xc32_monitor.o: ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c  .generated_files/flags/pic32mx_eth_sk2/64bc07bd4632247910867310d1f6746fc05a7e65 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1603735184" 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1776862575/sys_dma.o: ../src/config/pic32mx_eth_sk2/system/dma/sys_dma.c  .generated_files/flags/pic32mx_eth_sk2/4f56a033aa8c3dea2281245b0920bc0b16040435 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1776862575" 
	@${RM} ${OBJECTDIR}/_ext/1776862575/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/1776862575/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1776862575/sys_dma.o.d" -o ${OBJECTDIR}/_ext/1776862575/sys_dma.o ../src/config/pic32mx_eth_sk2/system/dma/sys_dma.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/147036963/sys_int.o: ../src/config/pic32mx_eth_sk2/system/int/src/sys_int.c  .generated_files/flags/pic32mx_eth_sk2/3ab664360a5f08efa08573034c268c12a4957251 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/147036963" 
	@${RM} ${OBJECTDIR}/_ext/147036963/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/147036963/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/147036963/sys_int.o.d" -o ${OBJECTDIR}/_ext/147036963/sys_int.o ../src/config/pic32mx_eth_sk2/system/int/src/sys_int.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1844760744/sys_reset.o: ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c  .generated_files/flags/pic32mx_eth_sk2/bddd0082b5449af66aabe20880c2369c985a9148 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1844760744" 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844760744/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/initialization.o: ../src/config/pic32mx_eth_sk2/initialization.c  .generated_files/flags/pic32mx_eth_sk2/1632ce40b0a3bcf8d9b7fb9eb601327a2d2bbb23 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/initialization.o.d" -o ${OBJECTDIR}/_ext/111649226/initialization.o ../src/config/pic32mx_eth_sk2/initialization.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/interrupts.o: ../src/config/pic32mx_eth_sk2/interrupts.c  .generated_files/flags/pic32mx_eth_sk2/f195f7b4fdd36a79d5ca54fdffb3a885eaf2da67 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts.o.d" -o ${OBJECTDIR}/_ext/111649226/interrupts.o ../src/config/pic32mx_eth_sk2/interrupts.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/exceptions.o: ../src/config/pic32mx_eth_sk2/exceptions.c  .generated_files/flags/pic32mx_eth_sk2/b77736ca5ddbb64a172761d21892e64694b600bf .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/exceptions.o.d" -o ${OBJECTDIR}/_ext/111649226/exceptions.o ../src/config/pic32mx_eth_sk2/exceptions.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/freertos_hooks.o: ../src/config/pic32mx_eth_sk2/freertos_hooks.c  .generated_files/flags/pic32mx_eth_sk2/76f166427fff27543865b10b5a9319638a4b5fad .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ../src/config/pic32mx_eth_sk2/freertos_hooks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/tasks.o: ../src/config/pic32mx_eth_sk2/tasks.c  .generated_files/flags/pic32mx_eth_sk2/9d3099a1d25a7058d2d63602d6414854dd64855 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/tasks.o.d" -o ${OBJECTDIR}/_ext/111649226/tasks.o ../src/config/pic32mx_eth_sk2/tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/pic32mx_eth_sk2/5eacc6995c118b60312de02973e9c855aa8f3ea5 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/951553248/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/pic32mx_eth_sk2/f4eb7a350eede4c287ce0a77e66c3a05c4b0e71a .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/951553248/port.o.d" -o ${OBJECTDIR}/_ext/951553248/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/pic32mx_eth_sk2/b68d3db2a8636994d61ceca9925e2f90dda1d868 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/pic32mx_eth_sk2/9c24c5deedfda1028f74ededc230ef9afd09aca4 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/pic32mx_eth_sk2/3585b0d84a1fa464b4f1d2b728c56453ee14b4d1 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/pic32mx_eth_sk2/e862ccdf5d4740a51be98e2093e70a29782a11ca .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/pic32mx_eth_sk2/ba517827574299851939c3ec58f2fee48d984fc9 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/pic32mx_eth_sk2/c7a406f6d9226b43bf9cee6a9b2dc73e003e295c .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/pic32mx_eth_sk2/b9c98d19fa1ec2140cc5a42c0accc0502f929f30 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx_eth_sk2/fae98f1df691a4e8b28021a6efa401b8e740ee2f .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_task1.o: ../src/app_task1.c  .generated_files/flags/pic32mx_eth_sk2/e71484cd7221909fd7dbe3cd8888e384c445e70a .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_task1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_task1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_task1.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_task1.o ../src/app_task1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_task2.o: ../src/app_task2.c  .generated_files/flags/pic32mx_eth_sk2/92e3b13cd0aff6b11fae7d37fcaf138fa9d0740d .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_task2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_task2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_task2.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_task2.o ../src/app_task2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_task3.o: ../src/app_task3.c  .generated_files/flags/pic32mx_eth_sk2/1d1af29fb1d7110f1e1926e97a112cdb0bd4ba98 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_task3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_task3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_task3.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_task3.o ../src/app_task3.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app4.o: ../src/app4.c  .generated_files/flags/pic32mx_eth_sk2/8e7fb000e33f96cb9aaeeadafcf78aea7c41fe51 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app4.o.d" -o ${OBJECTDIR}/_ext/1360937237/app4.o ../src/app4.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app3.o: ../src/app3.c  .generated_files/flags/pic32mx_eth_sk2/12929a9c79f83f81ba7c3105ab3ebf01a01b6f8b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app3.o.d" -o ${OBJECTDIR}/_ext/1360937237/app3.o ../src/app3.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app5.o: ../src/app5.c  .generated_files/flags/pic32mx_eth_sk2/8f8b449cb518fbd5ca249724c8110470b4b96616 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app5.o.d" -o ${OBJECTDIR}/_ext/1360937237/app5.o ../src/app5.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o: ../src/USER_DEFINITION_CONFIG/HELPER_FUNCTION.c  .generated_files/flags/pic32mx_eth_sk2/127b3ab8cf60b72cd2681fd81f13206b79cebe60 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/338807412" 
	@${RM} ${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o.d 
	@${RM} ${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o.d" -o ${OBJECTDIR}/_ext/338807412/HELPER_FUNCTION.o ../src/USER_DEFINITION_CONFIG/HELPER_FUNCTION.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o: ../src/USER_DEFINITION_CONFIG/SYSTEM_DEF.c  .generated_files/flags/pic32mx_eth_sk2/e9adf9f14c14220932623d8fd21f77ea50be0105 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/338807412" 
	@${RM} ${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o.d 
	@${RM} ${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o.d" -o ${OBJECTDIR}/_ext/338807412/SYSTEM_DEF.o ../src/USER_DEFINITION_CONFIG/SYSTEM_DEF.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mx_eth_sk2/p32MX795F512L.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mx_eth_sk2/p32MX795F512L.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
