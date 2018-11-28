%{ 
#include<stdio.h>
#include "y.tab.h"

extern int yylval;
%}
%%
[0-9]+ { yylval=atoi(yytext); return NUM;}
"-" return MIN;
"+" return PLUS;
"*" return MUL;
"/" return DIV;
"\n" return NL;
%%
int yywrap()
{
	return 1;
}