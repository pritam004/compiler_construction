%{
	#include<stdio.h>
	char a[50];
	int max=0;
%}
%%
[a-zA-Z]* { if(yyleng>max) {strcpy(a,yytext);max=yyleng;}}
.*;
%%
int main()
{
	yylex();
	printf("%s",a);
}
int yywrap()
{
	return 1;
}