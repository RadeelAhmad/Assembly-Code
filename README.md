# Assembly-Code

## HOW TO RUN SCRIPTS


## Setup of Irwin Library
- First, open Google and type irvine32 library.

![image1](Images/image1.png)

- Click on the first link.
- Click on code button and download ZIP file.

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
- Select the additional directories and paste the address of folder.

![image1](Images/image8.png)

- Then select the input
- Click on additional dependencies
- Write the `irvine32.lib`
- Click on apply and then OK botton

![image1](Images/image9.png)

- Just like that write the `irvine32.lib` and click on OK button

![image1](Images/image10.png)

- Select the `.asm` file
- Click on the **properties**

![image1](Images/image11.png)

- Select the Microsoft macro assembler
- Click on General
- Select the include paths
- And paste the address of file
- Click on apply and then ok

![image1](Images/image12.png)

## After setup library

- Write the code of `irvine32 library`
- Here is the example of using irvine32 library

```assembly
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

**You see that it will be successful run the code.**

![image1](Images/image13.png)


