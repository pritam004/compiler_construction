%{
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
void yyerror(char *s);
int c=0;
%}
%token ZERO ONE X
%%
N: L1 {}
L1:L X L2 {printf("\n%f",$1+($3/pow(2,c)));}
L: L B {$$=$1*2+$2;}
| B {$$=$1;}
B:ZERO {$$=$1;}
|ONE {$$=$1;};
L2: L2 C {$$=$1*2+$2;}
| C {$$=$1;}
C:ZERO {$$=$1;c++;}
|ONE {$$=$1;c++;};
%%
int main()
{
while(yyparse());
}
int yywrap()
{
	return 1;
}
void yyerror(char *s)
{
fprintf(stdout,"\n%s",s);
}
