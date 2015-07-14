obj-m += msr-safe.o
msr-safe-objs := msr_safe.o msr-whitelist.o msr-smp.o msr-batch.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
