# Out-of-tree build for the hello study module.
# KDIR must point at headers/build files for the kernel you will load the
# module into. Default: the running kernel's build tree.
obj-m += hello.o

KDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

.PHONY: all clean

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
