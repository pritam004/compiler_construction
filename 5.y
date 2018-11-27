%{ 
#include<stdio.h>
int yylex();
int yyerror();
int yywrap();
int count =0;
int in =0;

%}
%token A B NL C
%%
S1:S NL {};
S:A S {count++;}|{};
S:B S {count ++;};
S:C S {in=1;};
%%

int main()
{
yyparse();
if (in ==1)
printf("invalid");
else
printf("count %d",count);
}
int yywrap()
{
}
int yyerror()
{
}