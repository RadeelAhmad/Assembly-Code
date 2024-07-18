.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode:DWORD
.data
myVariable DWORD 16, 12, 43
diff DWORD ?
.code
main PROC
mov eax, myVariable
sub eax, 4
sub eax, [myVariable+4]
mov ebx, [myVariable+8]
sub eax, ebx
mov diff,eax
INVOKE ExitProcess, eax
main ENDP
END main
