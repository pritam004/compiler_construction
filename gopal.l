%{
#include<stdio.h>
#include "y.tab.h"
%}
letter[a-zA-Z]
digit[0-9]
%%
"int"|"float"|"char" return DT;
{letter}({letter}|{digit})*  return ID;
"(" return OP;
")" return CP;
"," return COM;
";" return SEM;
"\n" return NL;
%%
