letter[a-zA-Z]
digit[0-9]
aop[+ - / *]

%{
#include<stdio.h>
%}

%%

"int"|"float"|"char"|"for" {printf(" keyword");}
{letter}({digit}|{letter})* {printf(" identifier");}
{aop} {printf("arithmetic operator");}
">"|">="|"<"|"==" {printf("relational operator");}

.* {printf("invalid");}
%%
int main()
{	
	yylex();
	return 0;
}
int yywrap()
{
	return 1;
}
