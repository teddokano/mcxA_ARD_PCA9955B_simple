################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/serial_manager/fsl_component_serial_manager.c \
../component/serial_manager/fsl_component_serial_port_uart.c 

C_DEPS += \
./component/serial_manager/fsl_component_serial_manager.d \
./component/serial_manager/fsl_component_serial_port_uart.d 

OBJS += \
./component/serial_manager/fsl_component_serial_manager.o \
./component/serial_manager/fsl_component_serial_port_uart.o 


# Each subdirectory must supply rules for building sources it contributes
component/serial_manager/%.o: ../component/serial_manager/%.c component/serial_manager/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DCPU_MCXA153VLH -DCPU_MCXA153VLH_cm33_nodsp -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/board" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/source" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/lists" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/drivers" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/CMSIS" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/device" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/serial_manager" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/utilities" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/uart" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fsingle-precision-constant -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-component-2f-serial_manager

clean-component-2f-serial_manager:
	-$(RM) ./component/serial_manager/fsl_component_serial_manager.d ./component/serial_manager/fsl_component_serial_manager.o ./component/serial_manager/fsl_component_serial_port_uart.d ./component/serial_manager/fsl_component_serial_port_uart.o

.PHONY: clean-component-2f-serial_manager

