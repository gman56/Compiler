#include <stdio.h>

int choose(int n, int r)
{
  {
    {
      int b_TEMP_BinaryOp_1;
      b_TEMP_BinaryOp_1 = (r == 0);
      if (b_TEMP_BinaryOp_1) goto L_if_true1;
    }
    goto L_if_false2;
L_if_true1:
    return 1;
    goto L_if_end3;
L_if_false2:
    {
      {
        int b_TEMP_BinaryOp_2;
        b_TEMP_BinaryOp_2 = (r == n);
        if (b_TEMP_BinaryOp_2) goto L_if_true4;
      }
      goto L_if_false5;
L_if_true4:
      return 1;
      goto L_if_end6;
L_if_false5:
      {
        int TEMP_BinaryOp_3;
        int TEMP_functionCall_4;
        int TEMP_BinaryOp_5;
        int TEMP_BinaryOp_6;
        int TEMP_functionCall_7;
        int TEMP_BinaryOp_8;
        TEMP_BinaryOp_3 = (n - 1);
        TEMP_functionCall_4 = choose(TEMP_BinaryOp_3, r);
        TEMP_BinaryOp_5 = (n - 1);
        TEMP_BinaryOp_6 = (r - 1);
        TEMP_functionCall_7 = choose(TEMP_BinaryOp_5, TEMP_BinaryOp_6);
        TEMP_BinaryOp_8 = (TEMP_functionCall_4 + TEMP_functionCall_7);
        return TEMP_BinaryOp_8;
      }
L_if_end6:
      ;
    }
L_if_end3:
    ;
  }
}

int main()
{
  int n;
  n = 5;
  {
L_loop_test7:
    {
      int b_TEMP_BinaryOp_9;
      b_TEMP_BinaryOp_9 = (n <= 6);
      if (b_TEMP_BinaryOp_9) goto L_loop_body8;
    }
    goto L_loop_exit9;
L_loop_body8:
    {
      int r;
      r = 0;
      {
L_loop_test10:
        {
          int b_TEMP_BinaryOp_10;
          b_TEMP_BinaryOp_10 = (r <= n);
          if (b_TEMP_BinaryOp_10) goto L_loop_body11;
        }
        goto L_loop_exit12;
L_loop_body11:
        {
          {
            int TEMP_functionCall_11;
            TEMP_functionCall_11 = choose(n, r);
            printf("%d\n", TEMP_functionCall_11);
          }
          {
            int TEMP_BinaryOp_12;
            TEMP_BinaryOp_12 = (r + 1);
            r = TEMP_BinaryOp_12;
          }
        }
        goto L_loop_test10;
L_loop_exit12:
        ;
      }
      {
        int TEMP_UnaryOp_13;
        TEMP_UnaryOp_13 = (-999999);
        printf("%d\n", TEMP_UnaryOp_13);
      }
      {
        int TEMP_BinaryOp_14;
        TEMP_BinaryOp_14 = (n + 1);
        n = TEMP_BinaryOp_14;
      }
    }
    goto L_loop_test7;
L_loop_exit9:
    ;
  }
  return 0;
}

