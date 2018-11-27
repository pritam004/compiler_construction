%{
#include<stdio.h>
int yylex(void);
%}
%union
{
 float dval;
}
%token <dval> NUMBER
%left '+' '-'
%left '*' '/'
%nonassoc UMINUS
%type <dval> exp
%%
state : exp {printf("Answer = %fn",$1);}
 ;
exp : NUMBER
 | exp '+' exp {$$=$1+$3;}
 | exp '-' exp {$$=$1-$3;}
 | exp '*' exp {$$=$1*$3;}
 | exp '/' exp {$$=$1/$3;}
 | '('exp')' {$$=$2;}
 | '-' exp %prec UMINUS {$$=-$2;}
 ;
%% 
int yywrap()
{
return 1;
}