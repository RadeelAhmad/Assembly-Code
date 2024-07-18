.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode:DWORD
.data
myVariable DWORD 16, 12, 43
sum DWORD ?
.code
main PROC
mov eax, myVariable
add eax, 4
add eax, [myVariable+4]
mov ebx, [myVariable+8]
add eax, ebx
mov sum,eax
INVOKE ExitProcess, eax
main ENDP
END main
