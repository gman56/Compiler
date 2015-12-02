#include <stdio.h>

int max2(int a, int b)
{
  {
    {
      int b_TEMP_BinaryOp_1;
      b_TEMP_BinaryOp_1 = (a > b);
      if (b_TEMP_BinaryOp_1) goto L_if_true1;
    }
    goto L_if_false2;
L_if_true1:
    return a;
    goto L_if_end3;
L_if_false2:
    return b;
L_if_end3:
    ;
  }
}

int main()
{
  int i;
  i = 1;
  {
L_loop_test4:
    {
      int b_TEMP_BinaryOp_2;
      b_TEMP_BinaryOp_2 = (i < 5);
      if (b_TEMP_BinaryOp_2) goto L_loop_body5;
    }
    goto L_loop_exit6;
L_loop_body5:
    {
      int j;
      j = 1;
      {
L_loop_test7:
        {
          int b_TEMP_BinaryOp_3;
          b_TEMP_BinaryOp_3 = (j < 5);
          if (b_TEMP_BinaryOp_3) goto L_loop_body8;
        }
        goto L_loop_exit9;
L_loop_body8:
        {
          int m;
          {
            int TEMP_BinaryOp_4;
            int TEMP_BinaryOp_5;
            int TEMP_BinaryOp_6;
            int TEMP_BinaryOp_7;
            int TEMP_functionCall_8;
            TEMP_BinaryOp_4 = (i * 2);
            TEMP_BinaryOp_5 = (TEMP_BinaryOp_4 + 90);
            TEMP_BinaryOp_6 = (j + 2);
            TEMP_BinaryOp_7 = (TEMP_BinaryOp_6 * 20);
            TEMP_functionCall_8 = max2(TEMP_BinaryOp_5, TEMP_BinaryOp_7);
            m = TEMP_functionCall_8;
          }
          printf("%d\n", m);
          {
            int TEMP_BinaryOp_9;
            TEMP_BinaryOp_9 = (j + 1);
            j = TEMP_BinaryOp_9;
          }
        }
        goto L_loop_test7;
L_loop_exit9:
        ;
      }
      {
        int TEMP_BinaryOp_10;
        TEMP_BinaryOp_10 = (i + 1);
        i = TEMP_BinaryOp_10;
      }
    }
    goto L_loop_test4;
L_loop_exit6:
    ;
  }
  return 0;
}

