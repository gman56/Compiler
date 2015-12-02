                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

               _f:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $32, %esp
### sum := 0
                    movl      $0, %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### i := 1
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test1:
### TEMP_BinaryOp_1 := (i < 10)
                    movl      $10, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_1) GOTO L_loop_body2
                    movl      -12(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body2
### GOTO L_loop_exit3
                    jmp       L_loop_exit3
     L_loop_body2:
### TEMP_BinaryOp_2 := (sum + i)
                    movl      -4(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -8(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -16(%ebp), %eax
                    movl      %ecx, (%eax)
### sum := TEMP_BinaryOp_2
                    movl      -16(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_3 := (i + 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
### i := TEMP_BinaryOp_3
                    movl      -20(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT sum
                    movl      -8(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### GOTO L_loop_test1
                    jmp       L_loop_test1
     L_loop_exit3:
                    nop
### TEMP_BinaryOp_4 := (sum + 10)
                    movl      $10, %eax
                    movl      %eax, %ecx
                    movl      -8(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -24(%ebp), %eax
                    movl      %ecx, (%eax)
### sum := TEMP_BinaryOp_4
                    movl      -24(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### RETURN sum
                    movl      -8(%ebp), %eax
                    leave
                    ret

            _main:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $16, %esp
### TEMP_functionCall_5 := f()
                    call      _f
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### result := TEMP_functionCall_5
                    movl      -8(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT result
                    movl      -4(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### RETURN 0
                    movl      $0, %eax
                    leave
                    ret

