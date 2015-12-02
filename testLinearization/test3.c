#include <stdio.h>

int f(int a, int b_b)
{
  int answer;
  {
    if (b_b) goto L_if_true1;
    goto L_if_false2;
L_if_true1:
    {
      int TEMP_UnaryOp_1;
      TEMP_UnaryOp_1 = (-a);
      answer = TEMP_UnaryOp_1;
    }
    goto L_if_end3;
L_if_false2:
    return a;
L_if_end3:
    ;
  }
  return answer;
}

int main()
{
  int i;
  i = 0;
  {
L_loop_test4:
    {
      int b_TEMP_BinaryOp_2;
      b_TEMP_BinaryOp_2 = (i < 6);
      if (b_TEMP_BinaryOp_2) goto L_loop_body5;
    }
    goto L_loop_exit6;
L_loop_body5:
    {
      int temp;
      {
        int TEMP_functionCall_3;
        TEMP_functionCall_3 = f(i, 1);
        temp = TEMP_functionCall_3;
      }
      printf("%d\n", temp);
      {
        int TEMP_functionCall_4;
        TEMP_functionCall_4 = f(i, 0);
        temp = TEMP_functionCall_4;
      }
      printf("%d\n", temp);
      {
        int TEMP_BinaryOp_5;
        TEMP_BinaryOp_5 = (i + 1);
        i = TEMP_BinaryOp_5;
      }
    }
    goto L_loop_test4;
L_loop_exit6:
    ;
  }
  return 0;
}

