%{
#include<stdio.h>
void yyerror();
int yylex();
int yywrap();
%}
%token ID Y NL OP CP COM SEM
%%
P: S NL {};
P: X NL {printf("function call");};
P:S2 NL {printf("variable declaration");};

S: Y ID OP CP V {};
S:Y ID OP Y K CP V {};
K: COM Y K {}|{};
V:SEM {printf("functional declaration");}|{printf("function definition");};

X: ID OP CP SEM{};
X: ID OP ID T CP SEM {};
T: COM ID T {}|{};

S2: Y ID O SEM {};
O:COM ID O {}|{};

%%
void yyerror()
{
}
int yywrap()
{
	return 1;
}
main()
{
	yyparse();
}