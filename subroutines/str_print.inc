str_print:
    mov     ah, 0eh
    mov     al, [si]

    ;mov     al, msg
    loop:
        int     10h
        inc     si
        mov     al, [si]
        cmp     al, 0
        jne     loop
    ret
ret
