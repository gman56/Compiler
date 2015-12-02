#include <stdio.h>

int max(int a, int b)
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
  int A[10];
  i = 0;
  {
L_loop_test4:
    {
      int b_TEMP_BinaryOp_2;
      b_TEMP_BinaryOp_2 = (i < 10);
      if (b_TEMP_BinaryOp_2) goto L_loop_body5;
    }
    goto L_loop_exit6;
L_loop_body5:
    {
      {
        void* TEMP_LOCATION_3;
        int TEMP_INDEX_4;
        TEMP_LOCATION_3 = A;
        TEMP_INDEX_4 = (i * 4);
        TEMP_LOCATION_3 = ((char *) TEMP_LOCATION_3) + TEMP_INDEX_4;
        (*(int *)TEMP_LOCATION_3) = i;
      }
      {
        int TEMP_BinaryOp_5;
        TEMP_BinaryOp_5 = (i + 1);
        i = TEMP_BinaryOp_5;
      }
      {
        void* TEMP_LOCATION_6;
        int TEMP_INDEX_7;
        int TEMP_UnaryOp_8;
        TEMP_LOCATION_6 = A;
        TEMP_INDEX_7 = (i * 4);
        TEMP_LOCATION_6 = ((char *) TEMP_LOCATION_6) + TEMP_INDEX_7;
        TEMP_UnaryOp_8 = (-i);
        (*(int *)TEMP_LOCATION_6) = TEMP_UnaryOp_8;
      }
      {
        int TEMP_BinaryOp_9;
        TEMP_BinaryOp_9 = (i + 1);
        i = TEMP_BinaryOp_9;
      }
    }
    goto L_loop_test4;
L_loop_exit6:
    ;
  }
  i = 0;
  {
L_loop_test7:
    {
      int b_TEMP_BinaryOp_10;
      b_TEMP_BinaryOp_10 = (i < 9);
      if (b_TEMP_BinaryOp_10) goto L_loop_body8;
    }
    goto L_loop_exit9;
L_loop_body8:
    {
      {
        void* TEMP_LOCATION_11;
        int TEMP_INDEX_12;
        void* TEMP_LOCATION_13;
        int TEMP_INDEX_14;
        int TEMP_BinaryOp_15;
        int TEMP_functionCall_16;
        TEMP_LOCATION_11 = A;
        TEMP_INDEX_12 = (i * 4);
        TEMP_LOCATION_11 = ((char *) TEMP_LOCATION_11) + TEMP_INDEX_12;
        TEMP_LOCATION_13 = A;
        TEMP_BinaryOp_15 = (i + 1);
        TEMP_INDEX_14 = (TEMP_BinaryOp_15 * 4);
        TEMP_LOCATION_13 = ((char *) TEMP_LOCATION_13) + TEMP_INDEX_14;
        TEMP_functionCall_16 = max((*(int *)TEMP_LOCATION_11), (*(int *)TEMP_LOCATION_13));
        printf("%d\n", TEMP_functionCall_16);
      }
      {
        int TEMP_BinaryOp_17;
        TEMP_BinaryOp_17 = (i + 1);
        i = TEMP_BinaryOp_17;
      }
    }
    goto L_loop_test7;
L_loop_exit9:
    ;
  }
  return 0;
}

