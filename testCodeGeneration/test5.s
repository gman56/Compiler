                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

               _f:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $16, %esp
### TEMP_BinaryOp_1 := (a * 10)
                    movl      $10, %eax
                    movl      %eax, %ecx
                    movl      8(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_2 := (b + TEMP_BinaryOp_1)
                    movl      -4(%ebp), %eax
                    movl      %eax, %ecx
                    movl      12(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### RETURN TEMP_BinaryOp_2
                    movl      -8(%ebp), %eax
                    leave
                    ret

            _main:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $40, %esp
### i := 1
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test1:
### TEMP_BinaryOp_3 := (i < 20)
                    movl      $20, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_3) GOTO L_loop_body2
                    movl      -12(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body2
### GOTO L_loop_exit3
                    jmp       L_loop_exit3
     L_loop_body2:
### j := 1
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test4:
### TEMP_BinaryOp_4 := (j < 10)
                    movl      $10, %eax
                    movl      %eax, %ecx
                    movl      -8(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -16(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_4) GOTO L_loop_body5
                    movl      -16(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body5
### GOTO L_loop_exit6
                    jmp       L_loop_exit6
     L_loop_body5:
### TEMP_functionCall_5 := f(i, j)
                    movl      -4(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      -8(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _f
                    movl      %eax, %ecx
                    leal      -24(%ebp), %eax
                    movl      %ecx, (%eax)
### temp := TEMP_functionCall_5
                    movl      -24(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT temp
                    movl      -20(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_BinaryOp_6 := (j + 3)
                    movl      $3, %eax
                    movl      %eax, %ecx
                    movl      -8(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
### j := TEMP_BinaryOp_6
                    movl      -28(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### GOTO L_loop_test4
                    jmp       L_loop_test4
     L_loop_exit6:
                    nop
### TEMP_BinaryOp_7 := (i + 5)
                    movl      $5, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -32(%ebp), %eax
                    movl      %ecx, (%eax)
### i := TEMP_BinaryOp_7
                    movl      -32(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### GOTO L_loop_test1
                    jmp       L_loop_test1
     L_loop_exit3:
                    nop
### RETURN 0
                    movl      $0, %eax
                    leave
                    ret

