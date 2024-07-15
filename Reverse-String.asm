INCLUDE Irvine32.inc

.data
    inputString BYTE 20 DUP(?)
    nameSize DWORD ?
    msg BYTE "Enter a string: ", 0
    reversedString BYTE 20 DUP(?), 0
    reverseMsg BYTE "Reversed string: ", 0

.code
main PROC
    ; Prompt for input
    mov edx, OFFSET msg
    call WriteString
    
    ; Read the input string
    mov edx, OFFSET inputString
    mov ecx, SIZEOF inputString
    call ReadString
    
    ; Calculate the length of the string
    mov esi, OFFSET inputString
    mov ecx, 0
L1:
    cmp BYTE PTR [esi], 0
    je L1_end
    inc ecx
    inc esi
    jmp L1
L1_end:
    mov nameSize, ecx
    
    ; Reverse the string
    mov esi, OFFSET inputString
    mov ecx, nameSize
L2:
    movzx eax, BYTE PTR [esi]
    push eax
    inc esi
    loop L2
    
    mov edi, OFFSET reversedString
    mov ecx, nameSize
L3:
    pop eax
    mov BYTE PTR [edi], al
    inc edi
    loop L3
    
    ; Null-terminate the reversed string
    mov BYTE PTR [edi], 0
    
    ; Print the reversed string
    mov edx, OFFSET reverseMsg
    call WriteString
    
    mov edx, OFFSET reversedString
    call WriteString
    
    ; Exit the program
    exit
main ENDP
END main
