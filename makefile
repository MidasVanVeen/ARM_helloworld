##
# hello world

all:
	arm-linux-gnu-as helloworld.s
	arm-linux-gnu-gcc a.out -o a.elf -nostdlib
	qemu-arm a.elf
	rm a.out a.elf -f


# end
