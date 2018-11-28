%{ 
#include<stdio.h>
#include "y.tab.h"

extern int yylval;
%}
%%
"1" return ONE;
"0" return ZERO;
"." return DOT;
"\n" return NL;
%%
int yywrap()
{
	return 1;
}