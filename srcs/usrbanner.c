#include <stdio.h>
#include <unistd.h>

int main()
{
    printf("%s\n", "\x1B[32m");
    printf("\n                    ░█▀█░█▄█░▀█▀░█▀▀░█▀▀░█▀█\n"); fflush(stdout); usleep(20000);
    printf("                    ░█▀█░█░█░░█░░▀▀█░▀▀█░█▀█\n"); fflush(stdout); usleep(20000);
    printf("                    ░▀░▀░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀░▀\n\n"); fflush(stdout); usleep(20000);
    return (0);
}