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

int max4(int a, int b, int c, int d)
{
  int t1;
  int t2;
  int t3;
  {
    int TEMP_functionCall_2;
    TEMP_functionCall_2 = max2(a, b);
    t1 = TEMP_functionCall_2;
  }
  {
    int TEMP_functionCall_3;
    TEMP_functionCall_3 = max2(c, d);
    t2 = TEMP_functionCall_3;
  }
  {
    int TEMP_functionCall_4;
    TEMP_functionCall_4 = max2(t1, t2);
    t3 = TEMP_functionCall_4;
  }
  return t3;
}

int main()
{
  int i;
  int j;
  int m;
  i = 10;
  j = 30;
  {
    int TEMP_functionCall_5;
    TEMP_functionCall_5 = max4(i, 20, j, 40);
    m = TEMP_functionCall_5;
  }
  printf("%d\n", m);
  {
    int TEMP_functionCall_6;
    TEMP_functionCall_6 = max4(40, j, 20, i);
    m = TEMP_functionCall_6;
  }
  printf("%d\n", m);
  {
    int TEMP_functionCall_7;
    TEMP_functionCall_7 = max4(1, j, i, i);
    m = TEMP_functionCall_7;
  }
  printf("%d\n", m);
  {
    int TEMP_functionCall_8;
    TEMP_functionCall_8 = max4(i, i, i, i);
    m = TEMP_functionCall_8;
  }
  printf("%d\n", m);
  return 0;
}

