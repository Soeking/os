        BOOT_LOAD           equ     0x7C00

        BOOT_SIZE           equ     (1024 * 8)
        SECT_SIZE           equ     (512)
        BOOT_SECT           equ     (BOOT_SIZE / SECT_SIZE)

        E820_RECORD_SIZE    equ     20
