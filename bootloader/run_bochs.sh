#!/bin/bash 
nasm -f bin bootloader.asm -o bootloader.bin
echo "Compilation finished"
echo "Launching bochs"
bochs -f bochsrc.txt -q
echo "Exit"