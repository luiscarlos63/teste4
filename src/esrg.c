#include <stdio.h>
#include "esrg.h"

int ESRG()
{
    char name[20];
    printf("Enter name: ");
    scanf("%s", name);
    printf("Welcome to ESRG %s\n.", name);
    return 0;
}
