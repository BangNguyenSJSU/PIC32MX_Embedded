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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mx_eth_sk2/bsp/bsp.c ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c ../src/config/pic32mx_eth_sk2/initialization.c ../src/config/pic32mx_eth_sk2/interrupts.c ../src/config/pic32mx_eth_sk2/interrupts_a.S ../src/config/pic32mx_eth_sk2/exceptions.c ../src/config/pic32mx_eth_sk2/freertos_hooks.c ../src/config/pic32mx_eth_sk2/sys_tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/USER_HELPER/HELPER_FUNCTION.c ../src/main.c ../src/LCD_Task1.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C2_PIC32MX.c ../src/config/pic32mx_eth_sk2/peripheral/UART_baremetal/UART2_dma_PIC32MX.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1123471642/bsp.o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ${OBJECTDIR}/_ext/895125403/plib_evic.o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ${OBJECTDIR}/_ext/111649226/initialization.o ${OBJECTDIR}/_ext/111649226/interrupts.o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ${OBJECTDIR}/_ext/111649226/exceptions.o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ${OBJECTDIR}/_ext/111649226/sys_tasks.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/951553248/port.o ${OBJECTDIR}/_ext/951553248/port_asm.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1123471642/bsp.o.d ${OBJECTDIR}/_ext/467495608/osal_freertos.o.d ${OBJECTDIR}/_ext/1968539896/plib_clk.o.d ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d ${OBJECTDIR}/_ext/895164091/plib_dmac.o.d ${OBJECTDIR}/_ext/895125403/plib_evic.o.d ${OBJECTDIR}/_ext/895071575/plib_gpio.o.d ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d ${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d ${OBJECTDIR}/_ext/894668632/plib_uart2.o.d ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d ${OBJECTDIR}/_ext/1844760744/sys_reset.o.d ${OBJECTDIR}/_ext/111649226/initialization.o.d ${OBJECTDIR}/_ext/111649226/interrupts.o.d ${OBJECTDIR}/_ext/111649226/interrupts_a.o.d ${OBJECTDIR}/_ext/111649226/exceptions.o.d ${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d ${OBJECTDIR}/_ext/111649226/sys_tasks.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/951553248/port.o.d ${OBJECTDIR}/_ext/951553248/port_asm.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o.d ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1123471642/bsp.o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ${OBJECTDIR}/_ext/895125403/plib_evic.o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ${OBJECTDIR}/_ext/111649226/initialization.o ${OBJECTDIR}/_ext/111649226/interrupts.o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ${OBJECTDIR}/_ext/111649226/exceptions.o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ${OBJECTDIR}/_ext/111649226/sys_tasks.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/951553248/port.o ${OBJECTDIR}/_ext/951553248/port_asm.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o

# Source Files
SOURCEFILES=../src/config/pic32mx_eth_sk2/bsp/bsp.c ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c ../src/config/pic32mx_eth_sk2/initialization.c ../src/config/pic32mx_eth_sk2/interrupts.c ../src/config/pic32mx_eth_sk2/interrupts_a.S ../src/config/pic32mx_eth_sk2/exceptions.c ../src/config/pic32mx_eth_sk2/freertos_hooks.c ../src/config/pic32mx_eth_sk2/sys_tasks.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/USER_HELPER/HELPER_FUNCTION.c ../src/main.c ../src/LCD_Task1.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C2_PIC32MX.c ../src/config/pic32mx_eth_sk2/peripheral/UART_baremetal/UART2_dma_PIC32MX.c



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
${OBJECTDIR}/_ext/111649226/interrupts_a.o: ../src/config/pic32mx_eth_sk2/interrupts_a.S  .generated_files/flags/pic32mx_eth_sk2/ad6dee1990398d59307b053fab5752a38a3a0fd7 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.ok ${OBJECTDIR}/_ext/111649226/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ../src/config/pic32mx_eth_sk2/interrupts_a.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d" "${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553248/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/pic32mx_eth_sk2/2d3cf3c870983d617627c78ca3506313620e69ea .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.ok ${OBJECTDIR}/_ext/951553248/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/951553248/port_asm.o.d"  -o ${OBJECTDIR}/_ext/951553248/port_asm.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553248/port_asm.o.d" "${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/111649226/interrupts_a.o: ../src/config/pic32mx_eth_sk2/interrupts_a.S  .generated_files/flags/pic32mx_eth_sk2/76036a2a06124a3ae8794bd681eb0fbd5516f9f9 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.ok ${OBJECTDIR}/_ext/111649226/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ../src/config/pic32mx_eth_sk2/interrupts_a.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d",--gdwarf-2,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d" "${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553248/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/pic32mx_eth_sk2/99b4e918f9336a224f4f254b3f1fd67ca99ed294 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${OBJECTDIR}/_ext/1123471642/bsp.o: ../src/config/pic32mx_eth_sk2/bsp/bsp.c  .generated_files/flags/pic32mx_eth_sk2/bd8d813217b157849a11e76ccf876e073986cc08 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1123471642" 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1123471642/bsp.o.d" -o ${OBJECTDIR}/_ext/1123471642/bsp.o ../src/config/pic32mx_eth_sk2/bsp/bsp.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/467495608/osal_freertos.o: ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c  .generated_files/flags/pic32mx_eth_sk2/2324924e9483a5384943769d6700dddc0484074b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/467495608" 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/467495608/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968539896/plib_clk.o: ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx_eth_sk2/ad81752dd55cf7badeda47a2048bfa7fbbb7eb45 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1968539896" 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968539896/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1824765036/plib_coretimer.o: ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mx_eth_sk2/b3b037fc6c384069cf95c0faf17c22b5f4696769 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1824765036" 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895164091/plib_dmac.o: ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c  .generated_files/flags/pic32mx_eth_sk2/fe686eee6a794b350fa788a480a44a4ad4818b8f .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895164091" 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895164091/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895125403/plib_evic.o: ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx_eth_sk2/f659f225e54607097e2652b10ce7eadc5b2a7ff4 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895125403" 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895125403/plib_evic.o.d" -o ${OBJECTDIR}/_ext/895125403/plib_evic.o ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895071575/plib_gpio.o: ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx_eth_sk2/2f5119126380dbdb84a87f535d1cc46c934c08d8 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895071575" 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895071575/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C_LCD.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c  .generated_files/flags/pic32mx_eth_sk2/6b9966ccfad0e53701fa163cc275d6b6a0ec6d6e .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968523521/plib_tmr2.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mx_eth_sk2/358cd1381bb4500144a1cf0ae044498384b573ac .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1968523521" 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894686958/plib_tmr1.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mx_eth_sk2/b6697ea4201883ee8844956465abbd6f77c92dde .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894686958" 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894668632/plib_uart2.o: ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mx_eth_sk2/96ba2e41caf367170df0c6c83f7d970170512968 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894668632" 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894668632/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1603735184/xc32_monitor.o: ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c  .generated_files/flags/pic32mx_eth_sk2/c6108f4fdf3ebf4cdf7d8837c020981779e9f9b9 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1603735184" 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1844760744/sys_reset.o: ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c  .generated_files/flags/pic32mx_eth_sk2/18fc16cce2b17abde5b00e3cd03f5061af50fa6e .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1844760744" 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844760744/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/initialization.o: ../src/config/pic32mx_eth_sk2/initialization.c  .generated_files/flags/pic32mx_eth_sk2/289b40261ae5fab3111beb2ee20b995dd842bca6 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/initialization.o.d" -o ${OBJECTDIR}/_ext/111649226/initialization.o ../src/config/pic32mx_eth_sk2/initialization.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/interrupts.o: ../src/config/pic32mx_eth_sk2/interrupts.c  .generated_files/flags/pic32mx_eth_sk2/f3c6f254d2b2e45d16620a8b1e09a8aef89cea42 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts.o.d" -o ${OBJECTDIR}/_ext/111649226/interrupts.o ../src/config/pic32mx_eth_sk2/interrupts.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/exceptions.o: ../src/config/pic32mx_eth_sk2/exceptions.c  .generated_files/flags/pic32mx_eth_sk2/452fdc1d5340c703bb167711052db607f9c23b5b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/exceptions.o.d" -o ${OBJECTDIR}/_ext/111649226/exceptions.o ../src/config/pic32mx_eth_sk2/exceptions.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/freertos_hooks.o: ../src/config/pic32mx_eth_sk2/freertos_hooks.c  .generated_files/flags/pic32mx_eth_sk2/5afc1a0d8d47d77f25a43c754a468abd8dce09cc .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ../src/config/pic32mx_eth_sk2/freertos_hooks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/sys_tasks.o: ../src/config/pic32mx_eth_sk2/sys_tasks.c  .generated_files/flags/pic32mx_eth_sk2/e03f1bc89912d7f46c37a39c7fe2a7972da77ef0 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/sys_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/sys_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/sys_tasks.o.d" -o ${OBJECTDIR}/_ext/111649226/sys_tasks.o ../src/config/pic32mx_eth_sk2/sys_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/pic32mx_eth_sk2/7ad5b252c39019f01e6777f35511785e9ca4c85f .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/951553248/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/pic32mx_eth_sk2/8dde32e1ab86abf04c1f3b19f1e973216d8cecd6 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/951553248/port.o.d" -o ${OBJECTDIR}/_ext/951553248/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/pic32mx_eth_sk2/e85688edbee2e3000a202938c3a8a80e435495fc .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/pic32mx_eth_sk2/372d3b370d4a3af6417d39c82234c7f3055ab627 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/pic32mx_eth_sk2/6f907cc064eb1aff9a49c6acfd775bead70e7d4f .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/pic32mx_eth_sk2/cc17facc2801c87cae314304e468cb7cb18edfcd .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/pic32mx_eth_sk2/a93d6a9b00ff3ed8324d833f67b15bd495ab2642 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/pic32mx_eth_sk2/d591b2428c6c525ace069243891be28250213f38 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/pic32mx_eth_sk2/72a75358d53c0bb49384fd77f40b7a43a375aa89 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o: ../src/USER_HELPER/HELPER_FUNCTION.c  .generated_files/flags/pic32mx_eth_sk2/cee655668b8692a4e0d7465ad3f65c7fc03ab19e .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/743442264" 
	@${RM} ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d 
	@${RM} ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d" -o ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o ../src/USER_HELPER/HELPER_FUNCTION.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx_eth_sk2/55f59e4ed4c17c4ef47c9a2a0c63a544c0715333 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/LCD_Task1.o: ../src/LCD_Task1.c  .generated_files/flags/pic32mx_eth_sk2/eb21c9d4b36ff138531b2c21091e3627ce121a8f .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d" -o ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o ../src/LCD_Task1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C2_PIC32MX.c  .generated_files/flags/pic32mx_eth_sk2/de65f3c50e69284594f7890c469ba4f4525f9d31 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C2_PIC32MX.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o: ../src/config/pic32mx_eth_sk2/peripheral/UART_baremetal/UART2_dma_PIC32MX.c  .generated_files/flags/pic32mx_eth_sk2/1add9800270cb1fc2d7fea80ac0f60063d2a8698 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1880771394" 
	@${RM} ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o.d" -o ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o ../src/config/pic32mx_eth_sk2/peripheral/UART_baremetal/UART2_dma_PIC32MX.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1123471642/bsp.o: ../src/config/pic32mx_eth_sk2/bsp/bsp.c  .generated_files/flags/pic32mx_eth_sk2/b259ce812f47a8c9136f2cadf6f95b9e5832791c .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1123471642" 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1123471642/bsp.o.d" -o ${OBJECTDIR}/_ext/1123471642/bsp.o ../src/config/pic32mx_eth_sk2/bsp/bsp.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/467495608/osal_freertos.o: ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c  .generated_files/flags/pic32mx_eth_sk2/a894ccb6cc8f6f97c05ecb8968223a00390d08eb .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/467495608" 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/467495608/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968539896/plib_clk.o: ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx_eth_sk2/c833c52c632a8718f972d961657ce0b88fc40691 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1968539896" 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968539896/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1824765036/plib_coretimer.o: ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mx_eth_sk2/44f75edfa4af04e0f6fbd02d89e18732d7393920 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1824765036" 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895164091/plib_dmac.o: ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c  .generated_files/flags/pic32mx_eth_sk2/49f96450afea6aaeda664866fe91951f6bbac1b9 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895164091" 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895164091/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895125403/plib_evic.o: ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx_eth_sk2/b74ff22a2c478b47025e7a1ab036c693a3c6370f .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895125403" 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895125403/plib_evic.o.d" -o ${OBJECTDIR}/_ext/895125403/plib_evic.o ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895071575/plib_gpio.o: ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx_eth_sk2/c4cfc08ddccc6cc54cd456c31a54156e38ebb7b4 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895071575" 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895071575/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C_LCD.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c  .generated_files/flags/pic32mx_eth_sk2/cb79b658ab597cf37ccaf4dfd21d96848db87d4b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968523521/plib_tmr2.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mx_eth_sk2/51e9c24477094354636aa84b022432345f3e0a1b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1968523521" 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894686958/plib_tmr1.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mx_eth_sk2/ba9db2b844ea1ead2e42fa7882d17756617f0e8c .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894686958" 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894668632/plib_uart2.o: ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mx_eth_sk2/56d705c973f79795431e21ab5c1e6bca58567873 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894668632" 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894668632/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1603735184/xc32_monitor.o: ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c  .generated_files/flags/pic32mx_eth_sk2/5ad5041e3713c2c5a46a9b20e126bfe6664a643f .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1603735184" 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1844760744/sys_reset.o: ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c  .generated_files/flags/pic32mx_eth_sk2/9a79333139ee6c38b02f61bf60706bc46c20a3b2 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1844760744" 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844760744/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/initialization.o: ../src/config/pic32mx_eth_sk2/initialization.c  .generated_files/flags/pic32mx_eth_sk2/d1632c4106ad8024c39c0e243c22931389e04c05 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/initialization.o.d" -o ${OBJECTDIR}/_ext/111649226/initialization.o ../src/config/pic32mx_eth_sk2/initialization.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/interrupts.o: ../src/config/pic32mx_eth_sk2/interrupts.c  .generated_files/flags/pic32mx_eth_sk2/6050108b932d4271cf1550f57cd71076d00b759d .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts.o.d" -o ${OBJECTDIR}/_ext/111649226/interrupts.o ../src/config/pic32mx_eth_sk2/interrupts.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/exceptions.o: ../src/config/pic32mx_eth_sk2/exceptions.c  .generated_files/flags/pic32mx_eth_sk2/784c85548fab395ea9c4526bd6ea87084390d5f7 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/exceptions.o.d" -o ${OBJECTDIR}/_ext/111649226/exceptions.o ../src/config/pic32mx_eth_sk2/exceptions.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/freertos_hooks.o: ../src/config/pic32mx_eth_sk2/freertos_hooks.c  .generated_files/flags/pic32mx_eth_sk2/8e8eb35cd4b06793053a2dca8f132c25393f6ddb .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ../src/config/pic32mx_eth_sk2/freertos_hooks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/sys_tasks.o: ../src/config/pic32mx_eth_sk2/sys_tasks.c  .generated_files/flags/pic32mx_eth_sk2/23ba3d2c155c66c7068d392b897d97d58cf00734 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/sys_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/sys_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/sys_tasks.o.d" -o ${OBJECTDIR}/_ext/111649226/sys_tasks.o ../src/config/pic32mx_eth_sk2/sys_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/pic32mx_eth_sk2/783ab78bc4ea4febfe87ab198382bfcf9dbf355b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/951553248/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/pic32mx_eth_sk2/782e706656314dbc9133381a14dde5e1a963ed9d .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/951553248/port.o.d" -o ${OBJECTDIR}/_ext/951553248/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/pic32mx_eth_sk2/6dc8ef011b620dc40942a1ce8f6141efe5435df .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/pic32mx_eth_sk2/16e559ed94b006b5cc85672d856fffa79b3e87d .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/pic32mx_eth_sk2/9063a2901fafe3c8518cdbf566ebc69dd70f0181 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/pic32mx_eth_sk2/25d183afb68e1bc103d96a2b09ba49a2cda78b61 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/pic32mx_eth_sk2/6cc53a81e0cf4aefb81b643114cd29ff0d5f64a0 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/pic32mx_eth_sk2/c32a315669d80b35e6f8368c223e8d1d8eaf5fc1 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/pic32mx_eth_sk2/a09c8d6cbc384e1c7d3545994bc455637d7ca162 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o: ../src/USER_HELPER/HELPER_FUNCTION.c  .generated_files/flags/pic32mx_eth_sk2/ee1b6a764349797e0f515820d5dcd31738b20836 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/743442264" 
	@${RM} ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d 
	@${RM} ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d" -o ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o ../src/USER_HELPER/HELPER_FUNCTION.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx_eth_sk2/adafcc4253646a893be1b958c1722e0a2e62fdf2 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/LCD_Task1.o: ../src/LCD_Task1.c  .generated_files/flags/pic32mx_eth_sk2/3bb71a77dd6cb5baeec5b87f8f941b22cdd2ef4c .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d" -o ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o ../src/LCD_Task1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C2_PIC32MX.c  .generated_files/flags/pic32mx_eth_sk2/65bb48da1f62c76c354932802a945ce57720b135 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C2_PIC32MX.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C2_PIC32MX.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o: ../src/config/pic32mx_eth_sk2/peripheral/UART_baremetal/UART2_dma_PIC32MX.c  .generated_files/flags/pic32mx_eth_sk2/6420dcdf24a3d757fd04394e39b4c22b31d4ed2f .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1880771394" 
	@${RM} ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o.d" -o ${OBJECTDIR}/_ext/1880771394/UART2_dma_PIC32MX.o ../src/config/pic32mx_eth_sk2/peripheral/UART_baremetal/UART2_dma_PIC32MX.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mx_eth_sk2/p32MX795F512L.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/basic_freertos_pic32mx795F512L_eth_sk2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
