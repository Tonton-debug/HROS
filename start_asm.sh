
nasm -f bin -o boot.bin boot.asm kernel.asm
qemu-system-x86_64 -hda boot.bin
