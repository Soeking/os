task_1:

        cdecl   SS_TASK_0:0, 63, 0, 0x07, .s0
.10L:

        mov     eax, [RTC_TIME]
        cdecl   draw_time, 72, 0, 0x0700, eax

        jmp     .10L

.s0     db  "Task-1", 0
