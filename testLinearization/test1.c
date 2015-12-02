#include <stdio.h>

int f()
{
  int i;
  int sum;
  sum = 0;
  i = 1;
  {
L_loop_test1:
    {
      int b_TEMP_BinaryOp_1;
      b_TEMP_BinaryOp_1 = (i < 10);
      if (b_TEMP_BinaryOp_1) goto L_loop_body2;
    }
    goto L_loop_exit3;
L_loop_body2:
    {
      {
        int TEMP_BinaryOp_2;
        TEMP_BinaryOp_2 = (sum + i);
        sum = TEMP_BinaryOp_2;
      }
      {
        int TEMP_BinaryOp_3;
        TEMP_BinaryOp_3 = (i + 1);
        i = TEMP_BinaryOp_3;
      }
      printf("%d\n", sum);
    }
    goto L_loop_test1;
L_loop_exit3:
    ;
  }
  {
    int TEMP_BinaryOp_4;
    TEMP_BinaryOp_4 = (sum + 10);
    sum = TEMP_BinaryOp_4;
  }
  return sum;
}

int main()
{
  int result;
  {
    int TEMP_functionCall_5;
    TEMP_functionCall_5 = f();
    result = TEMP_functionCall_5;
  }
  printf("%d\n", result);
  return 0;
}

