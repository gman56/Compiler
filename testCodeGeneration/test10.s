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

        _arrayMax:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $44, %esp
### i := 1
                    movl      $1, %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_2 := C
                    leal      8(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_INDEX_3 := (0 * 4)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      $0, %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -16(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_2 := TEMP_LOCATION_2 + TEMP_INDEX_3
                    movl      -16(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -12(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -12(%ebp), %eax
                    movl      %ecx, (%eax)
### currentMax := *TEMP_LOCATION_2
                    movl      -12(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test4:
### TEMP_BinaryOp_4 := (i < 20)
                    movl      $20, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -20(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_4) GOTO L_loop_body5
                    movl      -20(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body5
### GOTO L_loop_exit6
                    jmp       L_loop_exit6
     L_loop_body5:
### TEMP_LOCATION_5 := C
                    leal      8(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -24(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_INDEX_6 := (i * 4)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -28(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_5 := TEMP_LOCATION_5 + TEMP_INDEX_6
                    movl      -28(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -24(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -24(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_functionCall_7 := max(currentMax, *TEMP_LOCATION_5)
                    movl      -8(%ebp), %eax
                    movl      %eax, 0(%esp)
                    movl      -24(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %eax, 4(%esp)
                    call      _max
                    movl      %eax, %ecx
                    leal      -32(%ebp), %eax
                    movl      %ecx, (%eax)
### currentMax := TEMP_functionCall_7
                    movl      -32(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_8 := (i + 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -4(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -36(%ebp), %eax
                    movl      %ecx, (%eax)
### i := TEMP_BinaryOp_8
                    movl      -36(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### GOTO L_loop_test4
                    jmp       L_loop_test4
     L_loop_exit6:
                    nop
### RETURN currentMax
                    movl      -8(%ebp), %eax
                    leave
                    ret

            _main:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $156, %esp
### i := 0
                    movl      $0, %eax
                    movl      %eax, %ecx
                    leal      -84(%ebp), %eax
                    movl      %ecx, (%eax)
     L_loop_test7:
### TEMP_BinaryOp_9 := (i < 20)
                    movl      $20, %eax
                    movl      %eax, %ecx
                    movl      -84(%ebp), %eax
                    cmpl      %ecx, %eax
                    setl      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -88(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_9) GOTO L_loop_body8
                    movl      -88(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_loop_body8
### GOTO L_loop_exit9
                    jmp       L_loop_exit9
     L_loop_body8:
### TEMP_BinaryOp_10 := (i % 2)
                    movl      $2, %eax
                    movl      %eax, %ecx
                    movl      -84(%ebp), %eax
                    cltd
                    idivl     %ecx
                    movl      %edx, %eax
                    movl      %eax, %ecx
                    leal      -92(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_BinaryOp_11 := (TEMP_BinaryOp_10 == 0)
                    movl      $0, %eax
                    movl      %eax, %ecx
                    movl      -92(%ebp), %eax
                    cmpl      %ecx, %eax
                    setz      %al
                    movzbl    %al, %eax
                    movl      %eax, %ecx
                    leal      -96(%ebp), %eax
                    movl      %ecx, (%eax)
### IF (TEMP_BinaryOp_11) GOTO L_if_true10
                    movl      -96(%ebp), %eax
                    cmpl      $0, %eax
                    jne       L_if_true10
### GOTO L_if_false11
                    jmp       L_if_false11
      L_if_true10:
### TEMP_LOCATION_12 := A
                    leal      -80(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -100(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_INDEX_13 := (i * 4)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -84(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -104(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_12 := TEMP_LOCATION_12 + TEMP_INDEX_13
                    movl      -104(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -100(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -100(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_UnaryOp_14 := (-i)
                    movl      -84(%ebp), %eax
                    negl      %eax
                    movl      %eax, %ecx
                    leal      -108(%ebp), %eax
                    movl      %ecx, (%eax)
### *TEMP_LOCATION_12 := TEMP_UnaryOp_14
                    movl      -108(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -100(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %ecx, (%eax)
### GOTO L_if_end12
                    jmp       L_if_end12
     L_if_false11:
### TEMP_LOCATION_15 := A
                    leal      -80(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -112(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_INDEX_16 := (i * 4)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      -84(%ebp), %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -116(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_15 := TEMP_LOCATION_15 + TEMP_INDEX_16
                    movl      -116(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -112(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -112(%ebp), %eax
                    movl      %ecx, (%eax)
### *TEMP_LOCATION_15 := i
                    movl      -84(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -112(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %ecx, (%eax)
       L_if_end12:
                    nop
### TEMP_BinaryOp_17 := (i + 1)
                    movl      $1, %eax
                    movl      %eax, %ecx
                    movl      -84(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -120(%ebp), %eax
                    movl      %ecx, (%eax)
### i := TEMP_BinaryOp_17
                    movl      -120(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -84(%ebp), %eax
                    movl      %ecx, (%eax)
### GOTO L_loop_test7
                    jmp       L_loop_test7
     L_loop_exit9:
                    nop
### TEMP_functionCall_18 := arrayMax(A)
                    leal      -80(%ebp), %eax
                    movl      %eax, 0(%esp)
                    call      _arrayMax
                    movl      %eax, %ecx
                    leal      -124(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT TEMP_functionCall_18
                    movl      -124(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_LOCATION_19 := A
                    leal      -80(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -128(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_INDEX_20 := (19 * 4)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      $19, %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -132(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_19 := TEMP_LOCATION_19 + TEMP_INDEX_20
                    movl      -132(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -128(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -128(%ebp), %eax
                    movl      %ecx, (%eax)
### *TEMP_LOCATION_19 := 0
                    movl      $0, %eax
                    movl      %eax, %ecx
                    leal      -128(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %ecx, (%eax)
### TEMP_functionCall_21 := arrayMax(A)
                    leal      -80(%ebp), %eax
                    movl      %eax, 0(%esp)
                    call      _arrayMax
                    movl      %eax, %ecx
                    leal      -136(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT TEMP_functionCall_21
                    movl      -136(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_LOCATION_22 := A
                    leal      -80(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -140(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_INDEX_23 := (10 * 4)
                    movl      $4, %eax
                    movl      %eax, %ecx
                    movl      $10, %eax
                    imull     %ecx, %eax
                    movl      %eax, %ecx
                    leal      -144(%ebp), %eax
                    movl      %ecx, (%eax)
### TEMP_LOCATION_22 := TEMP_LOCATION_22 + TEMP_INDEX_23
                    movl      -144(%ebp), %eax
                    movl      %eax, %ecx
                    movl      -140(%ebp), %eax
                    addl      %ecx, %eax
                    movl      %eax, %ecx
                    leal      -140(%ebp), %eax
                    movl      %ecx, (%eax)
### *TEMP_LOCATION_22 := 101
                    movl      $101, %eax
                    movl      %eax, %ecx
                    leal      -140(%ebp), %eax
                    movl      (%eax), %eax
                    movl      %ecx, (%eax)
### TEMP_functionCall_24 := arrayMax(A)
                    leal      -80(%ebp), %eax
                    movl      %eax, 0(%esp)
                    call      _arrayMax
                    movl      %eax, %ecx
                    leal      -148(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT TEMP_functionCall_24
                    movl      -148(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### RETURN 0
                    movl      $0, %eax
                    leave
                    ret

