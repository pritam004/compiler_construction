%{
#include<stdio.h>
#include<math.h>
int yylex();
void yyerror();
int yywrap();
int v1=0,v2=0,v3=0,v4=0,count=0;
%}
%token ZERO ONE NL DOT
%%
S: E NL {};
E : L1 DOT L2 {printf("%d %d %f ",v2,v3,v3+(v2/pow(2,count)));};
L1: L1 B {v3=v3*2+v1;}| B{v3=v1;};
L2: L2 C {v2=v2*2+v4;} | C{v2=v4;};
B :ZERO {v1=0;} | ONE {v1=1;};
C :ZERO {v4=0;count++;} | ONE {v4=1;count++;};
%%
void yyerror()
{
}
int main()
{
	yyparse();
}
