#include <stdio.h>
#include <string.h>
#include <errno.h>
//size_t ft_strlen(const char *);
//char * ft_strcpy(char *, const char *);
//ssize_t ft_write(int , const void *, size_t );
//ssize_t ft_read(int fd, void *buf, size_t count);
//char *ftstrdup(const char *s1);
//char * ft_strdup(const char *);
int		ft_strcmp(char *, char *);
int ftstrcmp(const char *s1, const char *s2);

int main()
{
    // char *s;
    // s = "sarah";
    // printf("%lu", ft_strlen(s));
    // return (0);
    char *s = "sara jdshfkgkldj";
   // char dest[30];
   // ssize_t ret;
    int r1;
    int r2,r3;

   // dest = ft_strcpy(dest, s);
    //printf("|%s|", ft_strcpy(dest, s));
    //  ret = ft_write(1, "sara", 4);
    //  printf("%lu", ret);

    // printf("Write return: %zu\n", ft_write(15, "wrong file descriptor", 3));
    // printf("Error code: %s\n", strerror(errno));  return(1);

    // printf("read return: %zu\n", ft_read(15, "wrong file descriptor", 3));
    // printf("code associated to error code : %s\n", strerror(errno));  return(1);
    r1 = ft_strcmp("the\0hidden", "thehidden");
    r2 = strcmp("the\0hidden", "thehidden");
    r3 = ftstrcmp("the\0hidden", "thehidden");
    printf("1 ===> %d\n", r1);
    printf("2 ===> %d\n", r2);
    printf("3 ===> %d\n", r3);

    // printf("1 ==> %s\n", ft_strdup(s));
    // printf("2 ===> %s\n", strdup(s));
    // ret = ft_read(1, s, 16);
    // printf("%lu", ret);
}