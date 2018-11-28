%{
#include<stdio.h>
int yylex();
void yyerror();
int yywrap();
%}
%token PLUS MIN NUM DIV MUL NL
%%
E:S NL {printf("\n");};
S: S PLUS X {printf("+");} | S MIN X {printf("-");} | X{};
X: X MUL Y {printf("*");} | X DIV Y {printf("/");}|Y{};
Y: NUM {printf("%d",yylval);}
%%
void yyerror()
{
}
int main()
{
	yyparse();
}
