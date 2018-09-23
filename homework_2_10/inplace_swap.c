#include <stdio.h>

void inplace_swap_EXCLUSIVE_OR(int *x, int *y);
void inplace_swap_PLUS(int *x, int *y);
void inplace_swap_MULTIPLY(int *x, int *y);

int main(void)
{
    int x = 1, y = 2;

    printf("orignal:\nx = %d\ny = %d\n", x, y);
    printf("use EXCLUSIVE-OR inplace swap:\n");
    inplace_swap_EXCLUSIVE_OR(&x, &y);
    printf("x = %d\ny = %d\n\n", x, y);

    x = 1;
    y = 2;
    printf("orignal:\nx = %d\ny = %d\n", x, y);
    printf("use PLUS inplace swap:\n");
    inplace_swap_PLUS(&x, &y);
    printf("x = %d\ny = %d\n\n", x, y);

    x = 1;
    y = 2;
    printf("orignal:\nx = %d\ny = %d\n", x, y);
    printf("use MULTIPLY inplace swap:\n");
    inplace_swap_MULTIPLY(&x, &y);
    printf("x = %d\ny = %d\n\n", x, y);
}

void inplace_swap_EXCLUSIVE_OR(int *x, int *y)
{
    *y = *x ^ *y;
    *x = *x ^ *y;
    *y = *x ^ *y;
}

void inplace_swap_PLUS(int *x, int *y)
{
    *y = *x + *y;
    *x = *y - *x;
    *y = *y - *x;
}

void inplace_swap_MULTIPLY(int *x, int *y)
{
    *y = *x * *y;
    *x = *y / *x;
    *y = *y / *x;
}
