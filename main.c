#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
size_t  ft_strlen(const char *);
char    *ft_strcpy(char *, const char *);
ssize_t ft_write(int , const void *, size_t );
ssize_t ft_read(int fd, void *buf, size_t count);
char    *ft_strdup(const char *);
int     ft_strcmp(char *, char *);

int main()
{
    char *str;
    str = "ft_strlen";
    char *s = "ft_strcpy";
    char *newstr;
    char dest[35];
    char *buff;
    ssize_t ret;
    int r1;

    printf("ft_strlen ===> %lu\n", ft_strlen(str));
    printf("ft_strcpy ===> %s\n", ft_strcpy(dest, s));
    ret = ft_write(1, "ft_write\n", 9);
    printf("Write return ===> %lu\n", ret);

    ret = ft_write(15, "wrong file descriptor", 3);
    printf("string associated to error code: %s\n", strerror(errno));

    int fd3 = open("main.c", O_RDONLY);
    ret = ft_read(fd3, &buff, 16);

    printf("read return ===> %lu\n", ret);

    ret = ft_read(15, "wrong file descriptor", 3);
    printf("string associated to error code : %s\n", strerror(errno));


    r1 = ft_strcmp("abcd", "abc");
    printf("ft_strcmp ===> %d\n", r1);

    newstr = ft_strdup(s);
    printf("ft_strdup ===> %s\n",newstr);
}