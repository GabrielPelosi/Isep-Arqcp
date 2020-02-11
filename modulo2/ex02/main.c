#include <stdio.h>

#include "asm.h"

int op1 = 0, op2 = 0;
int main() {
  printf("Valor op1:");
  scanf("%d", & op1);
  printf("Valor op2:");
  scanf("%d", & op2);
  printf("sum = %d\n", sum());
  return 0;
}
