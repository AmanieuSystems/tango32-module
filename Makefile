# SPDX-License-Identifier: GPL-2.0

obj-$(CONFIG_TANGO32) += tango32.o

KERNEL_SRC ?= /lib/modules/$(shell uname -r)/build
M ?= $(shell pwd)
KBUILD_OPTIONS += CONFIG_TANGO32=m

modules modules_install clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(M) $(KBUILD_OPTIONS) W=1 $(@)
