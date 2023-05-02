nasm -f bin -o boot.bin boot.asm
nasm -f bin -o kernel.bin kernel.asm
cat boot.bin kernel.bin > image.bin
qemu-system-x86_64 -hda image.bin
