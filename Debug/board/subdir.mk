################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../board/board.c \
../board/clock_config.c \
../board/peripherals.c \
../board/pin_mux.c 

C_DEPS += \
./board/board.d \
./board/clock_config.d \
./board/peripherals.d \
./board/pin_mux.d 

OBJS += \
./board/board.o \
./board/clock_config.o \
./board/peripherals.o \
./board/pin_mux.o 


# Each subdirectory must supply rules for building sources it contributes
board/%.o: ../board/%.c board/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DCPU_MCXA153VLH -DCPU_MCXA153VLH_cm33_nodsp -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/board" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/source" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/lists" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/drivers" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/CMSIS" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/device" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/serial_manager" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/utilities" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/uart" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fsingle-precision-constant -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-board

clean-board:
	-$(RM) ./board/board.d ./board/board.o ./board/clock_config.d ./board/clock_config.o ./board/peripherals.d ./board/peripherals.o ./board/pin_mux.d ./board/pin_mux.o

.PHONY: clean-board

