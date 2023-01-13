print:
			lodsb					; load next byte from string from SI to AL
			or			al, al		; Does AL=0?
			
			mov			ah,	0eh	; Nope-Print the character
			int			10h
			jmp			print		; Repeat until null terminator found
            ret
PrintDone:
			ret					; we are done, so return