%{
#include <stdio.h>
void yyerror();
int yylex();
int yywrap();
int f=0;
%}
%token X Y Z NL C
%%
S:S1 S2 NL {printf("accepted"),f++;};
S:C { printf ("it is extremely undesirable");}
S1: X S1 Y {}|{};
S2: Y S2 Z {}|{};
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
