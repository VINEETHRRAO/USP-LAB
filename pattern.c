#include <stdio.h>
#include<fcntl.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/stat.h>
int main(int argc, char *argv[])
{
char buf;
int size,fd, fd1;

fd1=open(argv[2], O_WRONLY);
fd=open(argv[1], O_RDONLY);
size=lseek(fd,-1,SEEK_END);
while(size-- >= 0)
{
read(fd, &buf, 1);
printf("%c", buf);
write(fd1, &buf, 1);
lseek(fd, -2, SEEK_CUR);
}
close(fd);
close(fd1);
printf("\n");
return 0;
}
