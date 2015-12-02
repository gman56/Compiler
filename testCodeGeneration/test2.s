                    .data
   _printf_string:
                    .ascii    "%d\n\0"
                    .text
                    .global _main

               _g:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $8, %esp
### PRINT 3
                    movl      $3, %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### PRINT 4
                    movl      $4, %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### RETURN 5
                    movl      $5, %eax
                    leave
                    ret

               _f:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $16, %esp
### PRINT 2
                    movl      $2, %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_functionCall_1 := g()
                    call      _g
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### i := TEMP_functionCall_1
                    movl      -8(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT i
                    movl      -4(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### RETURN 6
                    movl      $6, %eax
                    leave
                    ret

            _main:

                    pushl     %ebp
                    movl      %esp, %ebp
                    subl      $16, %esp
### PRINT 1
                    movl      $1, %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### TEMP_functionCall_2 := f()
                    call      _f
                    movl      %eax, %ecx
                    leal      -8(%ebp), %eax
                    movl      %ecx, (%eax)
### i := TEMP_functionCall_2
                    movl      -8(%ebp), %eax
                    movl      %eax, %ecx
                    leal      -4(%ebp), %eax
                    movl      %ecx, (%eax)
### PRINT i
                    movl      -4(%ebp), %eax
                    movl      %eax, 4(%esp)
                    movl      $_printf_string, (%esp)
                    call      _printf
### RETURN 0
                    movl      $0, %eax
                    leave
                    ret

