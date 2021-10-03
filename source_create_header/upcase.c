#include <stdio.h>
#include <stdlib.h>

char *my_strupcase(char *str)
{
    size_t i = 0;
    while (str[i] != '\0')
    {
        if (str[i]=='.')
        {
            str[i]='_';
        }
        else if ('a' <= str[i] && str[i] <= 'z')
            str[i] -= 'a' - 'A';
        i++;
    }
    if (str[i-1]=='C')
        str[i-1]='H';
    return str;
}

int main(int argc, char* argv[])
{
    if (argc !=2)
        return 1;
    char *str=my_strupcase(argv[1]);
    puts(str);
    return 0;
}
