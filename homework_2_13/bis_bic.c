#include <stdio.h>

int bis(int x, int m);
int bic(int x, int m);

int main(void)
{
    int x  = 0;
	int m = 0xff;

	printf("bis:\nx = 0x%x\nm = 0x%x\n", x, m);
	printf("z = 0x%x\n", bis(x, m));

    x = 0xff;
	m = 0xf;
	printf("bic:\nx = 0x%x\nm = 0x%x\n", x, m);
	printf("z = 0x%x\n", bic(x, m));
    return 0;
}

int bis(int x, int m)
{
    return (x | m);
}

int bic(int x, int m)
{
    return (x & (~m));
}
