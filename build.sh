#!/bin/bash 
nasm -f bin ./bootloader/bootloader.asm -o bootloader.bin

echo "Compilation finished"
echo "Launching qemu..."
echo "Executing"

#bochs -f bochsrc.txt -q
touch ./logfiles/qemu/log.txt 

qemu-system-i386 \
    -device qemu-xhci \
    -drive id=disk-image,file=./bootloader/bootloader.bin,if=none,format=raw \
    -device floppy,drive=disk-image \
    -d int -D ./logfiles/qemu/log.txt \

echo "Exit"