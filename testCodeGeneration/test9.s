                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

          _choose:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $40, %esp
### TEMP_BinaryOp_1 := (r == 0)
                    movl      $0, %eax
                    movl      %eax, %ecx
                    movl      12(%ebp), %eax
                    cmpl      %ecx, %eax
                    setz      %al
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
### RETURN 1
                    movl      $1, %eax
                    leave
                    ret
### GOTO L_if_end3
                    jmp       L_if_end3
      L_if_false2:
### TEMP_BinaryOp_2 := (r == n)
                    movl      8(%ebp), %eax
                    movl      %eax, %ecx
                    movl      12(%ebp), %eax
                    cmpl      %ecx, %eax
                    setz      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_2) GOTO L_if_true4
                    movl      -8(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_if_true4
### GOTO L_if_false5
                    jmp       L_if_false5
       L_if_true4:
### RETURN 1
                    movl      $1, %eax
                    leave
                    ret
### GOTO L_if_end6
                    jmp       L_if_end6
      L_if_false5:
### TEMP_BinaryOp_3 := (n - 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      8(%ebp), %eax
                    subl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_functionCall_4 := choose(TEMP_BinaryOp_3, r)
                    movl      -12(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _choose
                    movl      %eax, %ecx
                    leal      -16(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_5 := (n - 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      8(%ebp), %eax
                    subl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_6 := (r - 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      12(%ebp), %eax
                    subl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -24(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_functionCall_7 := choose(TEMP_BinaryOp_5, TEMP_BinaryOp_6)
                    movl      -20(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      -24(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _choose
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_8 := (TEMP_functionCall_4 + TEMP_functionCall_7)
                    movl      -28(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -16(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -32(%ebp), %eax
                    movl      %ecx, (%eax)
### RETURN TEMP_BinaryOp_8
                    movl      -32(%ebp), %eax
                    leave
                    ret
        L_if_end6:
                    nop
        L_if_end3:
                    nop

            _main:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $40, %esp
### n := 5
                    movl      $5, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test7:
### TEMP_BinaryOp_9 := (n <= 6)
                    movl      $6, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setle     %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_9) GOTO L_loop_body8
                    movl      -8(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body8
### GOTO L_loop_exit9
                    jmp       L_loop_exit9
     L_loop_body8:
### r := 0
                    movl      $0, %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
    L_loop_test10:
### TEMP_BinaryOp_10 := (r <= n)
                    movl      -4(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -12(%ebp), %eax
                    cmpl      %ecx, %eax
                    setle     %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -16(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_10) GOTO L_loop_body11
                    movl      -16(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body11
### GOTO L_loop_exit12
                    jmp       L_loop_exit12
    L_loop_body11:
### TEMP_functionCall_11 := choose(n, r)
                    movl      -4(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      -12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _choose
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT TEMP_functionCall_11
                    movl      -20(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_BinaryOp_12 := (r + 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -12(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -24(%ebp), %eax
                    movl      %ecx, (%eax)
### r := TEMP_BinaryOp_12
                    movl      -24(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### GOTO L_loop_test10
                    jmp       L_loop_test10
    L_loop_exit12:
                    nop
### TEMP_UnaryOp_13 := (-999999)
                    movl      $999999, %eax
                    negl      %eax
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT TEMP_UnaryOp_13
                    movl      -28(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_BinaryOp_14 := (n + 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -32(%ebp), %eax
                    movl      %ecx, (%eax)
### n := TEMP_BinaryOp_14
                    movl      -32(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### GOTO L_loop_test7
                    jmp       L_loop_test7
     L_loop_exit9:
                    nop
### RETURN 0
                    movl      $0, %eax
                    leave
                    ret

