#include <stdio.h>

int f(int a, int b)
{
  {
    int TEMP_BinaryOp_1;
    int TEMP_BinaryOp_2;
    TEMP_BinaryOp_1 = (a * 10);
    TEMP_BinaryOp_2 = (b + TEMP_BinaryOp_1);
    return TEMP_BinaryOp_2;
  }
}

int main()
{
  int i;
  int j;
  i = 1;
  {
L_loop_test1:
    {
      int b_TEMP_BinaryOp_3;
      b_TEMP_BinaryOp_3 = (i < 20);
      if (b_TEMP_BinaryOp_3) goto L_loop_body2;
    }
    goto L_loop_exit3;
L_loop_body2:
    {
      j = 1;
      {
L_loop_test4:
        {
          int b_TEMP_BinaryOp_4;
          b_TEMP_BinaryOp_4 = (j < 10);
          if (b_TEMP_BinaryOp_4) goto L_loop_body5;
        }
        goto L_loop_exit6;
L_loop_body5:
        {
          int temp;
          {
            int TEMP_functionCall_5;
            TEMP_functionCall_5 = f(i, j);
            temp = TEMP_functionCall_5;
          }
          printf("%d\n", temp);
          {
            int TEMP_BinaryOp_6;
            TEMP_BinaryOp_6 = (j + 3);
            j = TEMP_BinaryOp_6;
          }
        }
        goto L_loop_test4;
L_loop_exit6:
        ;
      }
      {
        int TEMP_BinaryOp_7;
        TEMP_BinaryOp_7 = (i + 5);
        i = TEMP_BinaryOp_7;
      }
    }
    goto L_loop_test1;
L_loop_exit3:
    ;
  }
  return 0;
}

