PrintString:
	_loop:
		lodsb		
		cmp			al, 0
		je			done

		mov			ah,	0x0e
		int			0x10
		jmp			_loop

    done:

ret	   