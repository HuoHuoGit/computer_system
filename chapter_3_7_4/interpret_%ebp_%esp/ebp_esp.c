#include <stdio.h>

int edp_esp_simulate_in_functioncall()
{
    int edp;
    int esp;
    int *edp_pinter;

    edp_pinter = &edp;
    edp = edp_pinter;

    printf("edp_pinter =%p\n", edp_pinter);
    printf("edp        =%p\n", edp);
}

int main(void)
{
    edp_esp_simulate_in_functioncall();
    
    return 0;
}
