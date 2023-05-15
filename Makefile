ASM=nasm
BOOT_SOURCE=boot.asm
KERNEL_SOURCE=kernel.asm
BOOT_OUTPUT=boot.bin
KERNEL_OUTPUT=kernel.bin
OUTPUT=image.bin

all:
	$(ASM) -f bin $(BOOT_SOURCE) -o $(BOOT_OUTPUT)
	$(ASM) -f bin $(KERNEL_SOURCE) -o $(KERNEL_OUTPUT)
	cat $(BOOT_OUTPUT) $(KERNEL_OUTPUT) > $(OUTPUT)
	qemu-system-x86_64 -hda $(OUTPUT)

clean: $(BOOT_OUTPUT) $(KERNEL_OUTPUT)
	rm $(BOOT_OUTPUT) $(KERNEL_OUTPUT)