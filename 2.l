digit[0-9]
%{
#include<stdio.h>
int o=0,e=0;
%}
%%
{digit}*([0 2 4 6 8 ]) {printf("even"); e++;}
{digit}*([1 3 5 7 9]) {printf("odd"); o++;}
.* printf("invalid"); 
%%
int main()
{
	yylex();
	if(o==1&&e==1)
		printf("valid");
	else
		printf("invalid");
}
int yywrap()
{
	return 1;
}