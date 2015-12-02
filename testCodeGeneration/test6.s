                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

            _max2:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $12, %esp
### TEMP_BinaryOp_1 := (a > b)
                    movl      12(%ebp), %eax
                    movl      %eax, %ecx
                    movl      8(%ebp), %eax
                    cmpl      %ecx, %eax
                    setg      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_1) GOTO L_if_true1
                    movl      -4(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_if_true1
### GOTO L_if_false2
                    jmp       L_if_false2
       L_if_true1:
### RETURN a
                    movl      8(%ebp), %eax
                    leave
                    ret
### GOTO L_if_end3
                    jmp       L_if_end3
      L_if_false2:
### RETURN b
                    movl      12(%ebp), %eax
                    leave
                    ret
        L_if_end3:
                    nop

            _main:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $56, %esp
### i := 1
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test4:
### TEMP_BinaryOp_2 := (i < 5)
                    movl      $5, %eax
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
### j := 1
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test7:
### TEMP_BinaryOp_3 := (j < 5)
                    movl      $5, %eax
                    movl      %eax, %ecx
                    movl      -12(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -16(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_3) GOTO L_loop_body8
                    movl      -16(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body8
### GOTO L_loop_exit9
                    jmp       L_loop_exit9
     L_loop_body8:
### TEMP_BinaryOp_4 := (i * 2)
                    movl      $2, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -24(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_5 := (TEMP_BinaryOp_4 + 90)
                    movl      $90, %eax
                    movl      %eax, %ecx
                    movl      -24(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_6 := (j + 2)
                    movl      $2, %eax
                    movl      %eax, %ecx
                    movl      -12(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -32(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_7 := (TEMP_BinaryOp_6 * 20)
                    movl      $20, %eax
                    movl      %eax, %ecx
                    movl      -32(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -36(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_functionCall_8 := max2(TEMP_BinaryOp_5, TEMP_BinaryOp_7)
                    movl      -28(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      -36(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _max2
                    movl      %eax, %ecx
                    leal      -40(%ebp), %eax
                    movl      %ecx, (%eax)
### m := TEMP_functionCall_8
                    movl      -40(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT m
                    movl      -20(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_BinaryOp_9 := (j + 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -12(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -44(%ebp), %eax
                    movl      %ecx, (%eax)
### j := TEMP_BinaryOp_9
                    movl      -44(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### GOTO L_loop_test7
                    jmp       L_loop_test7
     L_loop_exit9:
                    nop
### TEMP_BinaryOp_10 := (i + 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -48(%ebp), %eax
                    movl      %ecx, (%eax)
### i := TEMP_BinaryOp_10
                    movl      -48(%ebp), %eax
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

