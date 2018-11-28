%{
#include<stdio.h>
int yylex();
void yyerror();
int yywrap();
float value=0,num=0,value1=0;

%}
%token PLUS MIN NUM DIV MUL NL
%%
E:S NL {printf("%f",value1);};
S: S PLUS X {value1=value1+value;} | S MIN X {value1=value1-value;} | X{value1=value;};
X: X MUL Y {value=value*num;} | X DIV Y {value=value/num;}|Y{value=num;};
Y: NUM {num=yylval;}
%%
void yyerror()
{
}
int main()
{
	yyparse();
}
