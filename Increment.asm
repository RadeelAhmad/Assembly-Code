.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode:DWORD
.data
myVariable DWORD 0
.code
main PROC
inc myVariable
mov eax, myVariable
inc eax
INVOKE ExitProcess, eax
main ENDP
END main
