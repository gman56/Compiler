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

            _max4:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $32, %esp
### TEMP_functionCall_2 := max2(a, b)
                    movl      8(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _max2
                    movl      %eax, %ecx
                    leal      -16(%ebp), %eax
                    movl      %ecx, (%eax)
### t1 := TEMP_functionCall_2
                    movl      -16(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_functionCall_3 := max2(c, d)
                    movl      16(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      20(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _max2
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
### t2 := TEMP_functionCall_3
                    movl      -20(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_functionCall_4 := max2(t1, t2)
                    movl      -4(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      -8(%ebp), %eax
                    movl      %eax, 4(%esp)
                    call      _max2
                    movl      %eax, %ecx
                    leal      -24(%ebp), %eax
                    movl      %ecx, (%eax)
### t3 := TEMP_functionCall_4
                    movl      -24(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### RETURN t3
                    movl      -12(%ebp), %eax
                    leave
                    ret

            _main:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $36, %esp
### i := 10
                    movl      $10, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### j := 30
                    movl      $30, %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_functionCall_5 := max4(i, 20, j, 40)
                    movl      -4(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      $20, %eax
                    movl      %eax, 4(%esp)
                    movl      -8(%ebp), %eax
                    movl      %eax, 8(%esp)
                    movl      $40, %eax
                    movl      %eax, 12(%esp)
                    call      _max4
                    movl      %eax, %ecx
                    leal      -16(%ebp), %eax
                    movl      %ecx, (%eax)
### m := TEMP_functionCall_5
                    movl      -16(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT m
                    movl      -12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_functionCall_6 := max4(40, j, 20, i)
                    movl      $40, %eax
                    movl      %eax, 0(%esp)
                    movl      -8(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $20, %eax
                    movl      %eax, 8(%esp)
                    movl      -4(%ebp), %eax
                    movl      %eax, 12(%esp)
                    call      _max4
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
### m := TEMP_functionCall_6
                    movl      -20(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT m
                    movl      -12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_functionCall_7 := max4(1, j, i, i)
                    movl      $1, %eax
                    movl      %eax, 0(%esp)
                    movl      -8(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      -4(%ebp), %eax
                    movl      %eax, 8(%esp)
                    movl      -4(%ebp), %eax
                    movl      %eax, 12(%esp)
                    call      _max4
                    movl      %eax, %ecx
                    leal      -24(%ebp), %eax
                    movl      %ecx, (%eax)
### m := TEMP_functionCall_7
                    movl      -24(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT m
                    movl      -12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_functionCall_8 := max4(i, i, i, i)
                    movl      -4(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      -4(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      -4(%ebp), %eax
                    movl      %eax, 8(%esp)
                    movl      -4(%ebp), %eax
                    movl      %eax, 12(%esp)
                    call      _max4
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
### m := TEMP_functionCall_8
                    movl      -28(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT m
                    movl      -12(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### RETURN 0
                    movl      $0, %eax
                    leave
                    ret

