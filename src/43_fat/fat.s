FAT1:
        db      0xFF, 0xFF
        dw      0xFFFF
        dw      0xFFFF


FAT2:
        db      0xFF, 0xFF
        dw      0xFFFF
        dw      0xFFFF


FAT_ROOT:
        db      'BOOTABLE', 'DSK'
        db      ATTR_ARCHIVE | ATTR_VOLUME_ID
        db      0x00
        db      0x00
        dw      (0 << 11) | (0 << 5) | (0 / 2)
        dw      (0 << 9) | (0 << 5) | (1)
        dw      (0 << 9) | (0 << 5) | (1)
        dw      0x0000
        dw      (0 << 11) | (0 << 5) | (0 / 2)
        dw      (0 << 9) | (0 << 5) | (1)
        dw      0
        dd      0

        db      'SPECIAL ', 'TXT'
        db      ATTR_ARCHIVE
        db      0x00
        db      0
        dw      (0 << 11) | (0 << 5) | (0 / 2)
        dw      (0 << 9) | (1 << 5) | (1)
        dw      (0 << 9) | (1 << 5) | (1)
        dw      0x0000
        dw      (0 << 11) | (0 << 5) | (0 / 2)
        dw      (0 << 9) | (1 << 5) | (1)
        dw      2
        dd      FILE.end - FILE

FILE:   db      'hello, FAT!'
.end:   db      0

ALIGN 512, db 0x00
