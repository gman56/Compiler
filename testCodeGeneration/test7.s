                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

             _max:

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
                    subl      $116, %esp
### i := 0
                    movl      $0, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test4:
### TEMP_BinaryOp_2 := (i < 10)
                    movl      $10, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -48(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_2) GOTO L_loop_body5
                    movl      -48(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body5
### GOTO L_loop_exit6
                    jmp       L_loop_exit6
     L_loop_body5:
### TEMP_LOCATION_3 := A
                    leal      -44(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -52(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_INDEX_4 := (i * 4)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -56(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_3 := TEMP_LOCATION_3 + TEMP_INDEX_4
                    movl      -56(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -52(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -52(%ebp), %eax
                    movl      %ecx, (%eax)
### *TEMP_LOCATION_3 := i
                    movl      -4(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -52(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_5 := (i + 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -60(%ebp), %eax
                    movl      %ecx, (%eax)
### i := TEMP_BinaryOp_5
                    movl      -60(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_6 := A
                    leal      -44(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -64(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_INDEX_7 := (i * 4)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -68(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_6 := TEMP_LOCATION_6 + TEMP_INDEX_7
                    movl      -68(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -64(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -64(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_UnaryOp_8 := (-i)
                    movl      -4(%ebp), %eax
                    negl      %eax
                    movl      %eax, %ecx
                    leal      -72(%ebp), %eax
                    movl      %ecx, (%eax)
### *TEMP_LOCATION_6 := TEMP_UnaryOp_8
                    movl      -72(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -64(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_9 := (i + 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -76(%ebp), %eax
                    movl      %ecx, (%eax)
### i := TEMP_BinaryOp_9
                    movl      -76(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### GOTO L_loop_test4
                    jmp       L_loop_test4
     L_loop_exit6:
                    nop
### i := 0
                    movl      $0, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test7:
### TEMP_BinaryOp_10 := (i < 9)
                    movl      $9, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -80(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_10) GOTO L_loop_body8
                    movl      -80(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body8
### GOTO L_loop_exit9
                    jmp       L_loop_exit9
     L_loop_body8:
### TEMP_LOCATION_11 := A
                    leal      -44(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -84(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_INDEX_12 := (i * 4)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -88(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_11 := TEMP_LOCATION_11 + TEMP_INDEX_12
                    movl      -88(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -84(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -84(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_13 := A
                    leal      -44(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -92(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_15 := (i + 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -100(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_INDEX_14 := (TEMP_BinaryOp_15 * 4)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -100(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -96(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_13 := TEMP_LOCATION_13 + TEMP_INDEX_14
                    movl      -96(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -92(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -92(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_functionCall_16 := max(*TEMP_LOCATION_11, *TEMP_LOCATION_13)
                    movl      -84(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %eax, 0(%esp)
                    movl      -92(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %eax, 4(%esp)
                    call      _max
                    movl      %eax, %ecx
                    leal      -104(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT TEMP_functionCall_16
                    movl      -104(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_BinaryOp_17 := (i + 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -108(%ebp), %eax
                    movl      %ecx, (%eax)
### i := TEMP_BinaryOp_17
                    movl      -108(%ebp), %eax
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

