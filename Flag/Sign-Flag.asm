.model flat, stdcall
.stack 4096
ExitProcess PROTO,
dwExitCode:DWORD
.data
 myVariable DWORD 16, 12, 43
 sum DWORD ?
.code
main PROC
 mov cx, 0 
 sub cx, 1 
 add cx, 2 
 mov al, 0 
 sub al, 1 
 add al, 2 
 INVOKE ExitProcess, 0 ; Invoke the ExitProcess function with exit code 0
main ENDP
END main
