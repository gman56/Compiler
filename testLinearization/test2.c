#include <stdio.h>

int g()
{
  printf("%d\n", 3);
  printf("%d\n", 4);
  return 5;
}

int f()
{
  printf("%d\n", 2);
  {
    int i;
    {
      int TEMP_functionCall_1;
      TEMP_functionCall_1 = g();
      i = TEMP_functionCall_1;
    }
    printf("%d\n", i);
  }
  return 6;
}

int main()
{
  printf("%d\n", 1);
  {
    int i;
    {
      int TEMP_functionCall_2;
      TEMP_functionCall_2 = f();
      i = TEMP_functionCall_2;
    }
    printf("%d\n", i);
  }
  return 0;
}

