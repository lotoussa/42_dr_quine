#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int			main()
{
	int		i = 5;
	char	*name, *exec;
	char	*source = "#include <stdio.h>%1$c#include <unistd.h>%1$c#include <stdlib.h>%1$c%1$cint%2$c%2$c%2$cmain()%1$c{%1$c%2$cint%2$c%2$ci = %3$d;%1$c%2$cchar%2$c*name, *exec;%1$c%2$cchar%2$c*source = %4$c%5$s%4$c;%1$c%2$cFILE%2$c*f;%1$c%1$c%2$cif (i <= 0)%1$c%2$c%2$creturn (0);%1$c%2$cif (access(%4$cSully_5.c%4$c, F_OK) != -1)%1$c%2$c%2$ci--;%1$c%2$casprintf(&name, %4$cSully_%%d.c%4$c, i);%1$c%2$casprintf(&exec, %4$cgcc -Wall -Wextra -Werror %%s -o Sully_%%d && ./Sully_%%d%4$c, name, i, i);%1$c%2$cf = fopen(name, %4$cw%4$c);%1$c%2$cif (f == NULL)%1$c%2$c{%1$c%2$c%2$cfree(name);%1$c%2$c%2$cfree(exec);%1$c%2$c%2$creturn (0);%1$c%2$c}%1$c%2$cfprintf(f, source, 10, 9, i, 34, source);%1$c%2$cfclose(f);%1$c%2$csystem(exec);%1$c%2$cfree(name);%1$c%2$cfree(exec);%1$c%2$creturn (0);%1$c}%1$c";
	FILE	*f;

	if (i <= 0)
		return (0);
	if (access("Sully_5.c", F_OK) != -1)
		i--;
	asprintf(&name, "Sully_%d.c", i);
	asprintf(&exec, "gcc -Wall -Wextra -Werror %s -o Sully_%d && ./Sully_%d", name, i, i);
	f = fopen(name, "w");
	if (f == NULL)
	{
		free(name);
		free(exec);
		return (0);
	}
	fprintf(f, source, 10, 9, i, 34, source);
	fclose(f);
	system(exec);
	free(name);
	free(exec);
	return (0);
}
