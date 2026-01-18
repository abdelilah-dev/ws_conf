#include <unistd.h>
#include <stdio.h>

typedef long long int lli;

lli l_atoi(char *s)
{
    lli result = 0;
    while (*s)
    {
        result = (result * 10) + (*s - 48);
        s++;
    }
    return (result);
}

int main(int ac, char **av)
{
    lli delay;

    delay = l_atoi(av[1]);
    usleep(delay);
    return 0;
}