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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mx_eth_sk2/bsp/bsp.c ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c ../src/config/pic32mx_eth_sk2/initialization.c ../src/config/pic32mx_eth_sk2/interrupts.c ../src/config/pic32mx_eth_sk2/interrupts_a.S ../src/config/pic32mx_eth_sk2/exceptions.c ../src/config/pic32mx_eth_sk2/freertos_hooks.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/LCD_Task1.c ../src/config/pic32mx_eth_sk2/sys_tasks.c ../src/USER_HELPER/HELPER_FUNCTION.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1123471642/bsp.o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ${OBJECTDIR}/_ext/895125403/plib_evic.o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ${OBJECTDIR}/_ext/111649226/initialization.o ${OBJECTDIR}/_ext/111649226/interrupts.o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ${OBJECTDIR}/_ext/111649226/exceptions.o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/951553248/port.o ${OBJECTDIR}/_ext/951553248/port_asm.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o ${OBJECTDIR}/_ext/111649226/sys_tasks.o ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1123471642/bsp.o.d ${OBJECTDIR}/_ext/467495608/osal_freertos.o.d ${OBJECTDIR}/_ext/1968539896/plib_clk.o.d ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d ${OBJECTDIR}/_ext/895164091/plib_dmac.o.d ${OBJECTDIR}/_ext/895125403/plib_evic.o.d ${OBJECTDIR}/_ext/895071575/plib_gpio.o.d ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o.d ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d ${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d ${OBJECTDIR}/_ext/894668632/plib_uart2.o.d ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d ${OBJECTDIR}/_ext/1844760744/sys_reset.o.d ${OBJECTDIR}/_ext/111649226/initialization.o.d ${OBJECTDIR}/_ext/111649226/interrupts.o.d ${OBJECTDIR}/_ext/111649226/interrupts_a.o.d ${OBJECTDIR}/_ext/111649226/exceptions.o.d ${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/951553248/port.o.d ${OBJECTDIR}/_ext/951553248/port_asm.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d ${OBJECTDIR}/_ext/111649226/sys_tasks.o.d ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1123471642/bsp.o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ${OBJECTDIR}/_ext/895125403/plib_evic.o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ${OBJECTDIR}/_ext/111649226/initialization.o ${OBJECTDIR}/_ext/111649226/interrupts.o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ${OBJECTDIR}/_ext/111649226/exceptions.o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/951553248/port.o ${OBJECTDIR}/_ext/951553248/port_asm.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o ${OBJECTDIR}/_ext/111649226/sys_tasks.o ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o

# Source Files
SOURCEFILES=../src/config/pic32mx_eth_sk2/bsp/bsp.c ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.c ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c ../src/config/pic32mx_eth_sk2/initialization.c ../src/config/pic32mx_eth_sk2/interrupts.c ../src/config/pic32mx_eth_sk2/interrupts_a.S ../src/config/pic32mx_eth_sk2/exceptions.c ../src/config/pic32mx_eth_sk2/freertos_hooks.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/main.c ../src/LCD_Task1.c ../src/config/pic32mx_eth_sk2/sys_tasks.c ../src/USER_HELPER/HELPER_FUNCTION.c



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
${OBJECTDIR}/_ext/111649226/interrupts_a.o: ../src/config/pic32mx_eth_sk2/interrupts_a.S  .generated_files/flags/pic32mx_eth_sk2/5fa79157bb190dbf156e585a42fda509fc9cdfcc .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.ok ${OBJECTDIR}/_ext/111649226/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ../src/config/pic32mx_eth_sk2/interrupts_a.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d" "${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553248/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/pic32mx_eth_sk2/9bf1b356890809ee51f3dec3b0b58bace7be05a1 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/951553248/port_asm.o.ok ${OBJECTDIR}/_ext/951553248/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/951553248/port_asm.o.d"  -o ${OBJECTDIR}/_ext/951553248/port_asm.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553248/port_asm.o.d" "${OBJECTDIR}/_ext/951553248/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/111649226/interrupts_a.o: ../src/config/pic32mx_eth_sk2/interrupts_a.S  .generated_files/flags/pic32mx_eth_sk2/b82c501f9f199094c41a646558828d0913bdae89 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts_a.o.ok ${OBJECTDIR}/_ext/111649226/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/111649226/interrupts_a.o ../src/config/pic32mx_eth_sk2/interrupts_a.S  -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d",--gdwarf-2,-I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/111649226/interrupts_a.o.d" "${OBJECTDIR}/_ext/111649226/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553248/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  .generated_files/flags/pic32mx_eth_sk2/1c839f93ee131f57c8ca2de3aaa39dad3a667be1 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${OBJECTDIR}/_ext/1123471642/bsp.o: ../src/config/pic32mx_eth_sk2/bsp/bsp.c  .generated_files/flags/pic32mx_eth_sk2/d5c85948828d92810fdf69c6ee6dc515aa76c617 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1123471642" 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1123471642/bsp.o.d" -o ${OBJECTDIR}/_ext/1123471642/bsp.o ../src/config/pic32mx_eth_sk2/bsp/bsp.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/467495608/osal_freertos.o: ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c  .generated_files/flags/pic32mx_eth_sk2/c1b04dfcffebb78e5958cc93c393797ffc205afe .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/467495608" 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/467495608/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968539896/plib_clk.o: ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx_eth_sk2/cfe88d779e7465b522af44fbbade9e92122e74a9 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1968539896" 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968539896/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1824765036/plib_coretimer.o: ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mx_eth_sk2/2691a541a3d0ed0700cb1953b4ce0e04876f94da .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1824765036" 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895164091/plib_dmac.o: ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c  .generated_files/flags/pic32mx_eth_sk2/814f2d86755f96140cc0fefdc5a779dde3e97dcd .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895164091" 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895164091/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895125403/plib_evic.o: ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx_eth_sk2/3125b0599878e1309e2a569a07ae2253cc0fba37 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895125403" 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895125403/plib_evic.o.d" -o ${OBJECTDIR}/_ext/895125403/plib_evic.o ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895071575/plib_gpio.o: ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx_eth_sk2/f280450fa37da3180c3b27ee6450297bac104eb5 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895071575" 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895071575/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.c  .generated_files/flags/pic32mx_eth_sk2/ef5561afb5b0680f5704a7c0d44bc96998aa6489 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C_LCD.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c  .generated_files/flags/pic32mx_eth_sk2/1f3278416e6b35baf38f4a78d86ecbcdad7dd934 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968523521/plib_tmr2.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mx_eth_sk2/c66a2661d2186d73c4527403a9803e288e45c492 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1968523521" 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894686958/plib_tmr1.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mx_eth_sk2/6759e85f84e3c8d6ce25668f3b5802038ea474b6 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894686958" 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894668632/plib_uart2.o: ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mx_eth_sk2/cee04aacc63dd467f19bd0bbfb67d7a7e76a3c95 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894668632" 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894668632/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1603735184/xc32_monitor.o: ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c  .generated_files/flags/pic32mx_eth_sk2/c08683ad5bde9058b1a6c46fd88d8546251a36f8 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1603735184" 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1844760744/sys_reset.o: ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c  .generated_files/flags/pic32mx_eth_sk2/936122b9ee21329349ece1c5ce58d2564f7eb5a .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1844760744" 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844760744/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/initialization.o: ../src/config/pic32mx_eth_sk2/initialization.c  .generated_files/flags/pic32mx_eth_sk2/7cb38d4f9c33a52959e871929675f4aed24d0cbe .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/initialization.o.d" -o ${OBJECTDIR}/_ext/111649226/initialization.o ../src/config/pic32mx_eth_sk2/initialization.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/interrupts.o: ../src/config/pic32mx_eth_sk2/interrupts.c  .generated_files/flags/pic32mx_eth_sk2/69c20b5b868305e213abd11bef6dccfe8b019c8b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts.o.d" -o ${OBJECTDIR}/_ext/111649226/interrupts.o ../src/config/pic32mx_eth_sk2/interrupts.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/exceptions.o: ../src/config/pic32mx_eth_sk2/exceptions.c  .generated_files/flags/pic32mx_eth_sk2/d039f3d9f965af2a53668490094c9a4351211d61 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/exceptions.o.d" -o ${OBJECTDIR}/_ext/111649226/exceptions.o ../src/config/pic32mx_eth_sk2/exceptions.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/freertos_hooks.o: ../src/config/pic32mx_eth_sk2/freertos_hooks.c  .generated_files/flags/pic32mx_eth_sk2/88ed869b6c183a003c34d79b277e8cb4e63e34b8 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ../src/config/pic32mx_eth_sk2/freertos_hooks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/pic32mx_eth_sk2/f54b4b5ac7c9037b81f95f42ad1dc83f6893ce5f .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/951553248/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/pic32mx_eth_sk2/4ad7d544208f700641aa9134c2a4181d9121ef69 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/951553248/port.o.d" -o ${OBJECTDIR}/_ext/951553248/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/pic32mx_eth_sk2/efc10f8b0f7c06aa29c1c79ef31d224153800033 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/pic32mx_eth_sk2/264bfbc972cc85841e499bd2f629175f92cb4737 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/pic32mx_eth_sk2/69567ed618bab4dc163068ced31d1f39743e4b56 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/pic32mx_eth_sk2/8e85b7a661514ef5e954773357535bd5bf3ccc1a .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/pic32mx_eth_sk2/a38b7bc7eb26eebc71a09fe2fc8d220431efe5d7 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/pic32mx_eth_sk2/628c46ee4ae6dd0239fe49b8563644dd5ebfde78 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/pic32mx_eth_sk2/64977a2662cd469e514f2c5495ff25c54dd00c08 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx_eth_sk2/81bce7a5c6062ace1456dac1baca9db01d41cfdd .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/LCD_Task1.o: ../src/LCD_Task1.c  .generated_files/flags/pic32mx_eth_sk2/b015f240b1dec9fb54c17f2dc10c25b625b1a97b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d" -o ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o ../src/LCD_Task1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/sys_tasks.o: ../src/config/pic32mx_eth_sk2/sys_tasks.c  .generated_files/flags/pic32mx_eth_sk2/4c49340d5b393385b7941f9fd8cc86b5ecfd4145 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/sys_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/sys_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/sys_tasks.o.d" -o ${OBJECTDIR}/_ext/111649226/sys_tasks.o ../src/config/pic32mx_eth_sk2/sys_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o: ../src/USER_HELPER/HELPER_FUNCTION.c  .generated_files/flags/pic32mx_eth_sk2/6beba8f65137461a277bf3ddbb5d2e4c0ebe40b3 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/743442264" 
	@${RM} ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d 
	@${RM} ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d" -o ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o ../src/USER_HELPER/HELPER_FUNCTION.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1123471642/bsp.o: ../src/config/pic32mx_eth_sk2/bsp/bsp.c  .generated_files/flags/pic32mx_eth_sk2/ae6d2a00ec2ef948076884262d44fb97a4cd4f7 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1123471642" 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1123471642/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1123471642/bsp.o.d" -o ${OBJECTDIR}/_ext/1123471642/bsp.o ../src/config/pic32mx_eth_sk2/bsp/bsp.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/467495608/osal_freertos.o: ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c  .generated_files/flags/pic32mx_eth_sk2/79d63b01024bcdaa6c85aaa12d87834325bfa284 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/467495608" 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/467495608/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/467495608/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/467495608/osal_freertos.o ../src/config/pic32mx_eth_sk2/osal/osal_freertos.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968539896/plib_clk.o: ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mx_eth_sk2/9df7483ff1a87fc995f51f2b11f487dc64171880 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1968539896" 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968539896/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968539896/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1968539896/plib_clk.o ../src/config/pic32mx_eth_sk2/peripheral/clk/plib_clk.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1824765036/plib_coretimer.o: ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mx_eth_sk2/c7f6b9b0e973b3f018028c971ea62679142617b1 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1824765036" 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1824765036/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1824765036/plib_coretimer.o ../src/config/pic32mx_eth_sk2/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895164091/plib_dmac.o: ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c  .generated_files/flags/pic32mx_eth_sk2/ccff898f5c6996c6c335f61496a86b41260ce7ce .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895164091" 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/895164091/plib_dmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895164091/plib_dmac.o.d" -o ${OBJECTDIR}/_ext/895164091/plib_dmac.o ../src/config/pic32mx_eth_sk2/peripheral/dmac/plib_dmac.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895125403/plib_evic.o: ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mx_eth_sk2/17c3e7ebc294b262fcef0dcd1b29b474363a16f3 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895125403" 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/895125403/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895125403/plib_evic.o.d" -o ${OBJECTDIR}/_ext/895125403/plib_evic.o ../src/config/pic32mx_eth_sk2/peripheral/evic/plib_evic.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/895071575/plib_gpio.o: ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mx_eth_sk2/f4439b5c7dec0ee7418801ee39435520cb163200 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/895071575" 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/895071575/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/895071575/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/895071575/plib_gpio.o ../src/config/pic32mx_eth_sk2/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.c  .generated_files/flags/pic32mx_eth_sk2/cdf2f909828c2bed91f4b30b31714bd52dc28606 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C_2_PIC32MX.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_2_PIC32MX.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2146581590/I2C_LCD.o: ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c  .generated_files/flags/pic32mx_eth_sk2/e5e7be90439d5eee3a5a388c24776248b0d9b59f .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2146581590" 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d 
	@${RM} ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2146581590/I2C_LCD.o.d" -o ${OBJECTDIR}/_ext/2146581590/I2C_LCD.o ../src/config/pic32mx_eth_sk2/peripheral/I2C_baremetal/I2C_LCD.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1968523521/plib_tmr2.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/pic32mx_eth_sk2/f09cada4b0c3d003cf7e6a499fea938c23ee342 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1968523521" 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1968523521/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1968523521/plib_tmr2.o ../src/config/pic32mx_eth_sk2/peripheral/tmr/plib_tmr2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894686958/plib_tmr1.o: ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mx_eth_sk2/849caf6df78027a328349ea794828a6d74c88ad4 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894686958" 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/894686958/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894686958/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/894686958/plib_tmr1.o ../src/config/pic32mx_eth_sk2/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/894668632/plib_uart2.o: ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mx_eth_sk2/530abae590ecd6c891693be46526f6bcd9e45eea .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/894668632" 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/894668632/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/894668632/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/894668632/plib_uart2.o ../src/config/pic32mx_eth_sk2/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1603735184/xc32_monitor.o: ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c  .generated_files/flags/pic32mx_eth_sk2/fec5d929c8e0ca76b9eebee505e1509b7b021b19 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1603735184" 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1603735184/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1603735184/xc32_monitor.o ../src/config/pic32mx_eth_sk2/stdio/xc32_monitor.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1844760744/sys_reset.o: ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c  .generated_files/flags/pic32mx_eth_sk2/abd7363c972324db6201cbe6db0acf86fc02cf45 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1844760744" 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1844760744/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1844760744/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1844760744/sys_reset.o ../src/config/pic32mx_eth_sk2/system/reset/sys_reset.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/initialization.o: ../src/config/pic32mx_eth_sk2/initialization.c  .generated_files/flags/pic32mx_eth_sk2/d17eda68e77b0c0da5d6ed1689b824f17ff6aa63 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/initialization.o.d" -o ${OBJECTDIR}/_ext/111649226/initialization.o ../src/config/pic32mx_eth_sk2/initialization.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/interrupts.o: ../src/config/pic32mx_eth_sk2/interrupts.c  .generated_files/flags/pic32mx_eth_sk2/72749bf936f2037f359ac738864a0383c4aa02bd .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/interrupts.o.d" -o ${OBJECTDIR}/_ext/111649226/interrupts.o ../src/config/pic32mx_eth_sk2/interrupts.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/exceptions.o: ../src/config/pic32mx_eth_sk2/exceptions.c  .generated_files/flags/pic32mx_eth_sk2/c1e560d2220649c117c2cc32bef3591409d708c0 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/exceptions.o.d" -o ${OBJECTDIR}/_ext/111649226/exceptions.o ../src/config/pic32mx_eth_sk2/exceptions.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/freertos_hooks.o: ../src/config/pic32mx_eth_sk2/freertos_hooks.c  .generated_files/flags/pic32mx_eth_sk2/40825c0f9bed7c6ded3f1f3e9b347440e929134b .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/111649226/freertos_hooks.o ../src/config/pic32mx_eth_sk2/freertos_hooks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/pic32mx_eth_sk2/ac7900d0dc399e73fd038f519237f4fb77af38e1 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/951553248/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  .generated_files/flags/pic32mx_eth_sk2/86f6a18c6d991a17e5a01975da2028982febf054 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/951553248" 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553248/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/951553248/port.o.d" -o ${OBJECTDIR}/_ext/951553248/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/pic32mx_eth_sk2/45fc616585868bfdac542759e99817f40a0dbef4 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/pic32mx_eth_sk2/7fe7cbc2373ba315b03878106b7e100b7e2dbfb6 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/pic32mx_eth_sk2/dcef059e2677f0ca88fe308b6b205c833a6b43ab .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/pic32mx_eth_sk2/1d7cb11270a29957f327193cbefa9536abdb97aa .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/pic32mx_eth_sk2/10df3d5084475a63974e61ca3b54e12de0db11cf .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/pic32mx_eth_sk2/e7e733d8c159225aea31f591fadacf12c1354e67 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/pic32mx_eth_sk2/4803280cb02be570728854f63be724ddbd13dba2 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mx_eth_sk2/20d53dbe33a5928542e3301a83f3c71ba338a7f7 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/LCD_Task1.o: ../src/LCD_Task1.c  .generated_files/flags/pic32mx_eth_sk2/490a2e651da11949e7131d6c1ce6edb77d608e8c .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/LCD_Task1.o.d" -o ${OBJECTDIR}/_ext/1360937237/LCD_Task1.o ../src/LCD_Task1.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/111649226/sys_tasks.o: ../src/config/pic32mx_eth_sk2/sys_tasks.c  .generated_files/flags/pic32mx_eth_sk2/b36af2c8ddb272ba37cb6092c00eaa6944e1e7d .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/111649226" 
	@${RM} ${OBJECTDIR}/_ext/111649226/sys_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/111649226/sys_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/111649226/sys_tasks.o.d" -o ${OBJECTDIR}/_ext/111649226/sys_tasks.o ../src/config/pic32mx_eth_sk2/sys_tasks.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o: ../src/USER_HELPER/HELPER_FUNCTION.c  .generated_files/flags/pic32mx_eth_sk2/109bbdfb602d72fefba1f993a5797550d263cfe7 .generated_files/flags/pic32mx_eth_sk2/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/743442264" 
	@${RM} ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d 
	@${RM} ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mx_eth_sk2" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o.d" -o ${OBJECTDIR}/_ext/743442264/HELPER_FUNCTION.o ../src/USER_HELPER/HELPER_FUNCTION.c    -DXPRJ_pic32mx_eth_sk2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
