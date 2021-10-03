#include <stdio.h>
#include <stdlib.h>

char *my_strlowcase(char *str)
{
    size_t i = 0;
    while (str[i] != '\0')
    {
        if (str[i]=='_')
        {
            str[i]='.';
        }
        else if ('A' <= str[i] && str[i] <= 'Z')
            str[i] += 'a' - 'A';

        i++;
    }
    if (str[i-1]=='c')
        str[i-1]='h';
    return str;

    return str;
}

int main(int argc, char* argv[])
{
    if (argc !=2)
        return 1;
    char *str=my_strlowcase(argv[1]);
    puts(str);
    return 0;
}
