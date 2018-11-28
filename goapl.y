%{
#include<stdio.h>
int yylex();
void yyerror();
int yywrap();
%}
%token COM SEM ID DT OP CP NL
%%
S: FC NL {printf("function call");};
S: FD NL {};
FC : ID OP K SEM {};
K: ID CP {}| ID COM K {}| CP {};

FD: DT ID OP Z M{};
Z: DT ID CP {}| DT CP {} | DT ID COM Z{} | DT COM Z {} | CP {} ;
M:SEM {printf("function declaration");} | {printf("function definition");};
%%
void yyerror()
{
}
int main()
{
	yyparse();
}
int yywrap()
{
	return 1;
}fu