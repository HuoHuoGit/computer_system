#include <stdio.h>
#include <string.h>

void show_bytes(unsigned char * start, int len);
void show_int(int x);
void show_float(float x);
void show_pointer(void * x);

int main(void)
{
    int ival = 12345;
    float fval = 12345.0;    
    int * pval = &ival;
    const char * s = "abcdef";

    show_int(ival);
    show_float(fval);
    show_pointer(pval);

    printf("show string:\n");
    printf("abcdef:");
    show_bytes((unsigned char *)s, strlen(s));
}

void show_bytes(unsigned char * start, int len)
{
    int i = 0;

    for(i=0; i<len; i++)
    {
        printf("%.2x ", start[i]);
    }
    printf("\n");
}

void show_int(int x)
{
    show_bytes((unsigned char *)(&x), sizeof(int));
}

void show_float(float x)
{
    show_bytes((unsigned char *)(&x), sizeof(float));
}

void show_pointer(void * x)
{
    show_bytes((unsigned char *)x, sizeof(void *));
}
