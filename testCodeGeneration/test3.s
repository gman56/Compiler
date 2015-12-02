                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

               _f:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $16, %esp
### IF (b) GOTO L_if_true1
                    movl      12(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_if_true1
### GOTO L_if_false2
                    jmp       L_if_false2
       L_if_true1:
### TEMP_UnaryOp_1 := (-a)
                    movl      8(%ebp), %eax
                    negl      %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### answer := TEMP_UnaryOp_1
                    movl      -8(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### GOTO L_if_end3
                    jmp       L_if_end3
      L_if_false2:
### RETURN a
                    movl      8(%ebp), %eax
                    leave
                    ret
        L_if_end3:
                    nop
### RETURN answer
                    movl      -4(%ebp), %eax
                    leave
                    ret

            _main:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $32, %esp
### i := 0
                    movl      $0, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test4:
### TEMP_BinaryOp_2 := (i < 6)
                    movl      $6, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_2) GOTO L_loop_body5
                    movl      -8(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body5
### GOTO L_loop_exit6
                    jmp       L_loop_exit6
     L_loop_body5:
### TEMP_functionCall_3 := f(i, 1)
                    movl      -4(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      $1, %eax
                    movl      %eax, 4(%esp)
                    call      _f
                    movl      %eax, %ecx
                    leal      -16(%ebp), %eax
                    movl      %ecx, (%eax)
### temp := TEMP_functionCall_3
                    movl      -16(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT temp
                    movl      -12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_functionCall_4 := f(i, 0)
                    movl      -4(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      $0, %eax
                    movl      %eax, 4(%esp)
                    call      _f
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
### temp := TEMP_functionCall_4
                    movl      -20(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT temp
                    movl      -12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_BinaryOp_5 := (i + 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -24(%ebp), %eax
                    movl      %ecx, (%eax)
### i := TEMP_BinaryOp_5
                    movl      -24(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### GOTO L_loop_test4
                    jmp       L_loop_test4
     L_loop_exit6:
                    nop
### RETURN 0
                    movl      $0, %eax
                    leave
                    ret

