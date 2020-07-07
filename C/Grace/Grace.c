#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

/*
	This program will print its own source when run.
*/

#define KID_FILE "Grace_kid.c"
#define SOURCE "#include <stdio.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c%1$c/*%1$c%2$cThis program will print its own source when run.%1$c*/%1$c%1$c#define KID_FILE %3$c%4$s%3$c%1$c#define SOURCE %3$c%5$s%3$c%1$c#define FT(x)int main(){ int fd; if ((fd = open(KID_FILE, O_CREAT | O_WRONLY | O_TRUNC, 0644)) == -1) return (0); dprintf(fd, SOURCE, 10, 9, 34, KID_FILE, SOURCE); close(fd); return (0); }%1$c%1$cFT(KID_FILE)%1$c"
#define FT(x)int main(){ int fd; if ((fd = open(KID_FILE, O_CREAT | O_WRONLY | O_TRUNC, 0644)) == -1) return (0); dprintf(fd, SOURCE, 10, 9, 34, KID_FILE, SOURCE); close(fd); return (0); }

FT(KID_FILE)
