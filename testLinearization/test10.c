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

int arrayMax(int C[20])
{
  int i;
  int currentMax;
  i = 1;
  {
    void* TEMP_LOCATION_2;
    int TEMP_INDEX_3;
    TEMP_LOCATION_2 = C;
    TEMP_INDEX_3 = (0 * 4);
    TEMP_LOCATION_2 = ((char *) TEMP_LOCATION_2) + TEMP_INDEX_3;
    currentMax = (*(int *)TEMP_LOCATION_2);
  }
  {
L_loop_test4:
    {
      int b_TEMP_BinaryOp_4;
      b_TEMP_BinaryOp_4 = (i < 20);
      if (b_TEMP_BinaryOp_4) goto L_loop_body5;
    }
    goto L_loop_exit6;
L_loop_body5:
    {
      {
        void* TEMP_LOCATION_5;
        int TEMP_INDEX_6;
        int TEMP_functionCall_7;
        TEMP_LOCATION_5 = C;
        TEMP_INDEX_6 = (i * 4);
        TEMP_LOCATION_5 = ((char *) TEMP_LOCATION_5) + TEMP_INDEX_6;
        TEMP_functionCall_7 = max(currentMax, (*(int *)TEMP_LOCATION_5));
        currentMax = TEMP_functionCall_7;
      }
      {
        int TEMP_BinaryOp_8;
        TEMP_BinaryOp_8 = (i + 1);
        i = TEMP_BinaryOp_8;
      }
    }
    goto L_loop_test4;
L_loop_exit6:
    ;
  }
  return currentMax;
}

int main()
{
  int A[20];
  int i;
  i = 0;
  {
L_loop_test7:
    {
      int b_TEMP_BinaryOp_9;
      b_TEMP_BinaryOp_9 = (i < 20);
      if (b_TEMP_BinaryOp_9) goto L_loop_body8;
    }
    goto L_loop_exit9;
L_loop_body8:
    {
      {
        {
          int TEMP_BinaryOp_10;
          int b_TEMP_BinaryOp_11;
          TEMP_BinaryOp_10 = (i % 2);
          b_TEMP_BinaryOp_11 = (TEMP_BinaryOp_10 == 0);
          if (b_TEMP_BinaryOp_11) goto L_if_true10;
        }
        goto L_if_false11;
L_if_true10:
        {
          void* TEMP_LOCATION_12;
          int TEMP_INDEX_13;
          int TEMP_UnaryOp_14;
          TEMP_LOCATION_12 = A;
          TEMP_INDEX_13 = (i * 4);
          TEMP_LOCATION_12 = ((char *) TEMP_LOCATION_12) + TEMP_INDEX_13;
          TEMP_UnaryOp_14 = (-i);
          (*(int *)TEMP_LOCATION_12) = TEMP_UnaryOp_14;
        }
        goto L_if_end12;
L_if_false11:
        {
          void* TEMP_LOCATION_15;
          int TEMP_INDEX_16;
          TEMP_LOCATION_15 = A;
          TEMP_INDEX_16 = (i * 4);
          TEMP_LOCATION_15 = ((char *) TEMP_LOCATION_15) + TEMP_INDEX_16;
          (*(int *)TEMP_LOCATION_15) = i;
        }
L_if_end12:
        ;
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
  {
    int TEMP_functionCall_18;
    TEMP_functionCall_18 = arrayMax(A);
    printf("%d\n", TEMP_functionCall_18);
  }
  {
    void* TEMP_LOCATION_19;
    int TEMP_INDEX_20;
    TEMP_LOCATION_19 = A;
    TEMP_INDEX_20 = (19 * 4);
    TEMP_LOCATION_19 = ((char *) TEMP_LOCATION_19) + TEMP_INDEX_20;
    (*(int *)TEMP_LOCATION_19) = 0;
  }
  {
    int TEMP_functionCall_21;
    TEMP_functionCall_21 = arrayMax(A);
    printf("%d\n", TEMP_functionCall_21);
  }
  {
    void* TEMP_LOCATION_22;
    int TEMP_INDEX_23;
    TEMP_LOCATION_22 = A;
    TEMP_INDEX_23 = (10 * 4);
    TEMP_LOCATION_22 = ((char *) TEMP_LOCATION_22) + TEMP_INDEX_23;
    (*(int *)TEMP_LOCATION_22) = 101;
  }
  {
    int TEMP_functionCall_24;
    TEMP_functionCall_24 = arrayMax(A);
    printf("%d\n", TEMP_functionCall_24);
  }
  return 0;
}

