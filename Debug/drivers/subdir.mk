################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_common_arm.c \
../drivers/fsl_gpio.c \
../drivers/fsl_i3c.c \
../drivers/fsl_inputmux.c \
../drivers/fsl_lpi2c.c \
../drivers/fsl_lpspi.c \
../drivers/fsl_lpuart.c \
../drivers/fsl_pwm.c \
../drivers/fsl_reset.c \
../drivers/fsl_spc.c \
../drivers/fsl_utick.c 

C_DEPS += \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_common_arm.d \
./drivers/fsl_gpio.d \
./drivers/fsl_i3c.d \
./drivers/fsl_inputmux.d \
./drivers/fsl_lpi2c.d \
./drivers/fsl_lpspi.d \
./drivers/fsl_lpuart.d \
./drivers/fsl_pwm.d \
./drivers/fsl_reset.d \
./drivers/fsl_spc.d \
./drivers/fsl_utick.d 

OBJS += \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_common_arm.o \
./drivers/fsl_gpio.o \
./drivers/fsl_i3c.o \
./drivers/fsl_inputmux.o \
./drivers/fsl_lpi2c.o \
./drivers/fsl_lpspi.o \
./drivers/fsl_lpuart.o \
./drivers/fsl_pwm.o \
./drivers/fsl_reset.o \
./drivers/fsl_spc.o \
./drivers/fsl_utick.o 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c drivers/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DCPU_MCXA153VLH -DCPU_MCXA153VLH_cm33_nodsp -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/board" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/source" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/lists" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/drivers" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/CMSIS" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/device" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/serial_manager" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/utilities" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/uart" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fsingle-precision-constant -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-drivers

clean-drivers:
	-$(RM) ./drivers/fsl_clock.d ./drivers/fsl_clock.o ./drivers/fsl_common.d ./drivers/fsl_common.o ./drivers/fsl_common_arm.d ./drivers/fsl_common_arm.o ./drivers/fsl_gpio.d ./drivers/fsl_gpio.o ./drivers/fsl_i3c.d ./drivers/fsl_i3c.o ./drivers/fsl_inputmux.d ./drivers/fsl_inputmux.o ./drivers/fsl_lpi2c.d ./drivers/fsl_lpi2c.o ./drivers/fsl_lpspi.d ./drivers/fsl_lpspi.o ./drivers/fsl_lpuart.d ./drivers/fsl_lpuart.o ./drivers/fsl_pwm.d ./drivers/fsl_pwm.o ./drivers/fsl_reset.d ./drivers/fsl_reset.o ./drivers/fsl_spc.d ./drivers/fsl_spc.o ./drivers/fsl_utick.d ./drivers/fsl_utick.o

.PHONY: clean-drivers

