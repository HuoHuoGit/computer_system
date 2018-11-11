#include <stdio.h>

int main(void)
{
    float f = 0.0;
    double d = 0.0;

    float f2 = -0.0;
    double d2 = -0.0;


    printf("f = %f  0x%x\n", f, f);
    printf("d = %f  0x%x\n", d, d);

    printf("f2 = %f  0x%x\n", f2, f2);
    printf("d2 = %f  0x%x\n", d2, d2);

    return 0;
}
