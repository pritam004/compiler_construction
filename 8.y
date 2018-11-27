%{
#include <stdio.h>
void yyerror();
int yylex();
int yywrap();
int f=0;
%}
%token X Y  NL
%%
P:S NL {printf("accepted"),f++;};
S: X S Y S{}|{};
%%
int yywrap()
{
	return 1;
}
void yyerror()
{
	
}
int main()
{
 yyparse();
 if(f==0)
	printf("not accepted");
 
 return 0;
}
