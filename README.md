# Assembly-Code

## Setup of Irwin Library
- First, open Google and type irvine32 library.

![image1](Images/image-1.png)
![image1](images/image 1.png)

- Click on the first link.
- click on code button and download ZIP file.

![Screenshot 2024-05-01 162255.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/38395dc4-35a5-4811-aba3-09f7a4aad7cc/Screenshot_2024-05-01_162255.png)

- You see the file and extract the file.

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/607e8c00-6972-46fc-a40a-ad914c291ee5/Untitled.png)

- After Extract the file open the folder.

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/41edd425-5118-4061-87c0-be76b25cb8aa/Untitled.png)

- Copy the address on file.

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/21664337-d3d2-44b9-8648-4b11e247c407/Untitled.png)

- Then open the Visual studio.

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/2d3009a9-95f9-4901-a639-8881c5b3896a/Untitled.png)

- Press **alt + Enter.**

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/1f275cdf-8cf1-42b7-80a4-d0ed4eb20ba6/Untitled.png)

- Click On linker
- select the additional directories and paste the address of folder.

![Screenshot 2024-05-01 163600.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/747e165b-d490-46ee-a360-22eb728975ce/Screenshot_2024-05-01_163600.png)

- Then select the input
- click on additional dependencies
- write the `irvine32.lib`
- click on apply and then OK botton

![Screenshot 2024-05-01 164044.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/4df129a5-da34-4757-ab77-61623fe68922/Screenshot_2024-05-01_164044.png)

Just like that write the `irvine32.lib` and click on OK button

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/acf365e8-055e-4496-a683-d7ca53bd107f/Untitled.png)

- select the `.asm` file
- click on the **properties**

![Screenshot 2024-05-01 164506.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/88108091-3053-41ca-99cb-2a253e5df46c/Screenshot_2024-05-01_164506.png)

- select the Microsoft macro assembler
- click on General
- select the include paths
- and paste the address of file
- click on apply and then ok

![123.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/58abca4b-63e1-41b9-9b75-27bc30ce88a6/123.png)

After setup library

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

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/06789477-16a8-4f66-a8b7-9d3e1048f54d/Untitled.png)

Utilize Irwin Library's functions to format and display data to the user.

Here is another code

```jsx
; Include Irvine32 library
include Irvine32.inc

.data
    message BYTE "Hello, world!", 0 

.code
main PROC

    mov edx, OFFSET message  
    call WriteString     

    call Crlf     
    exit
main ENDP

END main
```

- We load the address of the **`message`** into the **`edx`** register using the **`OFFSET`** directive.
- We call the **`WriteString`** function to display the message to the user.
- After displaying the message, we call the **`Crlf`** function to move to the next line.
- Finally, we exit the program using the **`exit`** function

It will successfully run.

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/be755f77-01e6-47cb-b9ae-6c817e1b9bc6/Untitled.png)

> Problem
> 

I set up my code many times but it wouldn't run 🥲. Then I realized I had selected the wrong version (x86) and changed it to run the code successfully.

 

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/28ec497c-83dd-4fd2-b320-f5ec3343a26d/6c0f8c9d-07b1-4fac-aec9-427611b9c665/Untitled.png)
