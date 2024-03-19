################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../component/r01lib/InterruptIn.cpp \
../component/r01lib/P3T1755.cpp \
../component/r01lib/Ticker.cpp \
../component/r01lib/cpp_config.cpp \
../component/r01lib/i2c.cpp \
../component/r01lib/i3c.cpp \
../component/r01lib/io.cpp \
../component/r01lib/mcu.cpp \
../component/r01lib/spi.cpp 

C_SRCS += \
../component/r01lib/irq.c \
../component/r01lib/semihost_hardfault.c 

CPP_DEPS += \
./component/r01lib/InterruptIn.d \
./component/r01lib/P3T1755.d \
./component/r01lib/Ticker.d \
./component/r01lib/cpp_config.d \
./component/r01lib/i2c.d \
./component/r01lib/i3c.d \
./component/r01lib/io.d \
./component/r01lib/mcu.d \
./component/r01lib/spi.d 

C_DEPS += \
./component/r01lib/irq.d \
./component/r01lib/semihost_hardfault.d 

OBJS += \
./component/r01lib/InterruptIn.o \
./component/r01lib/P3T1755.o \
./component/r01lib/Ticker.o \
./component/r01lib/cpp_config.o \
./component/r01lib/i2c.o \
./component/r01lib/i3c.o \
./component/r01lib/io.o \
./component/r01lib/irq.o \
./component/r01lib/mcu.o \
./component/r01lib/semihost_hardfault.o \
./component/r01lib/spi.o 


# Each subdirectory must supply rules for building sources it contributes
component/r01lib/%.o: ../component/r01lib/%.cpp component/r01lib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -DPRINTF_FLOAT_ENABLE=1 -D__NEWLIB__ -DCPU_MCXA153VLH -DCPU_MCXA153VLH_cm33_nodsp -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/board" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/source" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/r01lib" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/pwm_for_led" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/lists" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/drivers" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/CMSIS" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/device" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/serial_manager" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/utilities" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/uart" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fno-rtti -fno-exceptions -fsingle-precision-constant -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

component/r01lib/%.o: ../component/r01lib/%.c component/r01lib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DCPU_MCXA153VLH -DCPU_MCXA153VLH_cm33_nodsp -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/board" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/source" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/lists" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/drivers" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/CMSIS" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/device" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/serial_manager" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/utilities" -I"/Users/tedd/dev/mcuxpresso/i3c/mcxA_ARD_PCA9955B_simple/component/uart" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fsingle-precision-constant -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33+nodsp -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-component-2f-r01lib

clean-component-2f-r01lib:
	-$(RM) ./component/r01lib/InterruptIn.d ./component/r01lib/InterruptIn.o ./component/r01lib/P3T1755.d ./component/r01lib/P3T1755.o ./component/r01lib/Ticker.d ./component/r01lib/Ticker.o ./component/r01lib/cpp_config.d ./component/r01lib/cpp_config.o ./component/r01lib/i2c.d ./component/r01lib/i2c.o ./component/r01lib/i3c.d ./component/r01lib/i3c.o ./component/r01lib/io.d ./component/r01lib/io.o ./component/r01lib/irq.d ./component/r01lib/irq.o ./component/r01lib/mcu.d ./component/r01lib/mcu.o ./component/r01lib/semihost_hardfault.d ./component/r01lib/semihost_hardfault.o ./component/r01lib/spi.d ./component/r01lib/spi.o

.PHONY: clean-component-2f-r01lib

