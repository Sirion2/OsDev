; Bootloader.asm

;Running at 16 bits Real Mode
use16
bits 16 

org     0x7c00

start:  jmp EntryPoint

; FAT12 BIOS parameter Block referencing DOS 4.1
OEM_ID:                 db  "MsWin4.1"
BytesPerSector:         db  1
SectorsPerCluster:      db  1
ReservedSectors:        dw  1
NumberofFATS:           db  2
RootEntries:            dw  224
TotalSectors:           dw  2880
MediaDescriptor:        db  0xF0
SectorsPerFAT:          db  9
SectorsPerTrack:        dw  18
HeadsPerCilynder:       dw  2
HiddenSectors:          dd  0
TotalSectorsBig:        dd  0

DriveNumber:            db  0
fsClean:                db  1
Unused:                 db  0
ExtBootSignature:       db  0x29
VolumeSerialNumber:     dd  0x1C
VolumeLabel:            db  "Disco C:/  ",0
FileSystem:             db  "FAT12   "


; Boot Loader Entry Point
EntryPoint:
    cli                    
    hlt                   
    times 510 - ($-$$) db 0     ; first padding 510 bytes with 0
    dw 0xAA5                    