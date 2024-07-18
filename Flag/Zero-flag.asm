.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode:DWORD
.data
 myVariable DWORD 16, 12, 43
 sum DWORD ?
.code
main PROC
 mov cx, 1 ; CX = 1
 sub cx, 1 ; Subtract 1 from CX
 mov ax, 0FFFFh ; AX = 0xFFFF
 inc ax ; Increment AX
 ; After increment, AX = 0, ZF = 1 (because the result is zero)
 inc ax ; Increment AX again
 ; After increment, AX = 1, ZF = 0 (because the result is non-zero)
 INVOKE ExitProcess, 0 
main ENDP
END main
