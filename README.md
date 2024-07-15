# Assembly-Code

## Setup of Irwin Library
- First, open Google and type irvine32 library.

![image1](Images/image1.png)

- Click on the first link.
- click on code button and download ZIP file.

![image1](Images/image2.png)

- You see the file and extract the file.

![image1](Images/image3.png)

- After Extract the file open the folder.

![image1](Images/image4.png)

- Copy the address on file.

![image1](Images/image5.png)

- Then open the Visual studio.

![image1](Images/image6.png)

- Press **alt + Enter.**

![image1](Images/image7.png)

- Click On linker
- select the additional directories and paste the address of folder.

![image1](Images/image8.png)

- Then select the input
- click on additional dependencies
- write the `irvine32.lib`
- click on apply and then OK botton

![image1](Images/image9.png)

- Just like that write the `irvine32.lib` and click on OK button

![image1](Images/image10.png)

- select the `.asm` file
- click on the **properties**

![image1](Images/image11.png)

- select the Microsoft macro assembler
- click on General
- select the include paths
- and paste the address of file
- click on apply and then ok

![image1](Images/image12.png)

## After setup library

- Write the code of `irvine32 library`
- here is the example of using irvine32 library

```jsx
; Include Irvine32 library
include Irvine32.inc

.data
    userInput BYTE 80 DUP(?)    
    promptMsg BYTE "Please enter your name: ", 0

.code
main PROC

    mov edx, OFFSET promptMsg   
    call WriteString          

    mov edx, OFFSET userInput   
    mov ecx, SIZEOF userInput  
    call ReadString            

    mov edx, OFFSET userInput   
    call WriteString           

    call Crlf              
    exit        
main ENDP

END main
```

You see that it will be successful run the code.

![image1](Images/image13.png)

Utilize Irwin Library's functions to format and display data to the user.
