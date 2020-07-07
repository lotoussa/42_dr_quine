#include <stdio.h>

/*
	This program will print its own source when run.
*/

char	*call_me()
{
	static char	*me = "#include <stdio.h>%1$c%1$c/*%1$c%2$cThis program will print its own source when run.%1$c*/%1$c%1$cchar%2$c*call_me()%1$c{%1$c%2$cstatic char%2$c*me = %3$c%4$s%3$c;%1$c%2$creturn (me);%1$c}%1$c%1$cint%2$c%2$cmain()%1$c{%1$c%2$c/*%1$c%2$c%2$c.nur nehw ecruos nwo sti tnirp lliw margorp sihT%1$c%2$c*/%1$c%2$cprintf(call_me(),10,9,34,call_me());%1$c%2$creturn (0);%1$c}%1$c";
	return (me);
}

int		main()
{
	/*
		.nur nehw ecruos nwo sti tnirp lliw margorp sihT
	*/
	printf(call_me(),10,9,34,call_me());
	return (0);
}
