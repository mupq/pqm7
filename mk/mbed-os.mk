# SPDX-License-Identifier: Apache-2.0 or CC0-1.0

MBED_OS_DIR ?= mbed-os

CROSS_PREFIX ?= arm-none-eabi
CC := $(CROSS_PREFIX)-gcc
CPP := $(CROSS_PREFIX)-cpp
AR := $(CROSS_PREFIX)-ar
LD := $(CC)
OBJCOPY := $(CROSS_PREFIX)-objcopy
SIZE := $(CROSS_PREFIX)-size

LIBHAL_SRC := \
    $(MBED_OS_TARGET_DIR)/TOOLCHAIN_GCC_ARM/startup_MPS2.S \
	common/hal-mps2.c \
	common/randombytes.c

LDSCRIPT = obj/generated.$(PLATFORM).ld

MPS2_DEPS += -I$(MBED_OS_DIR)/cmsis/CMSIS_5/CMSIS/TARGET_CORTEX_M/Include -I$(MBED_OS_TARGET_DIR)

obj/libpqm4hal.a: $(call objs,$(LIBHAL_SRC))
obj/libpqm4hal.a: CPPFLAGS += $(MPS2_DEPS)
obj/libpqm4hal-nornd.a: $(call objs,$(filter-out common/randombytes.c,$(LIBHAL_SRC)))

obj/%/startup_MPS2.S.o: CPPFLAGS += $(if $(MPS2_DATA_IN_FLASH),-DDATA_IN_FLASH)

LDLIBS += -lpqm4hal$(if $(NO_RANDOMBYTES),-nornd)
LIBDEPS += obj/libpqm4hal.a obj/libpqm4hal-nornd.a


$(LDSCRIPT): 	$(MBED_OS_TARGET_DIR)/TOOLCHAIN_GCC_ARM/MPS2.ld
	@printf "  GENLNK  $@\n"; \
	[ -d $(@D) ] || $(Q)mkdir -p $(@D); \
	$(CC) -x assembler-with-cpp -E -Wp,-P $(CPPFLAGS) $< -o $@

$(LDSCRIPT): CPPFLAGS += $(MPS2_DEPS)
$(LDSCRIPT): CPPFLAGS += $(if $(MPS2_DATA_IN_FLASH),-DDATA_IN_FLASH)

LINKDEPS += $(LDSCRIPT) $(LIBDEPS)

ENABLE_QEMU_TESTS = 1
QEMU = qemu-system-arm
QEMUFLAGS = -nographic -semihosting
