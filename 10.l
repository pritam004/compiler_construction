%{
#include<stdio.h>
#include "y.tab.h"

%}

digit [0-9]
letter [a-zA-Z]
%%
"int"|"float"|"char" return Y;
{letter}({letter}|{digit})* return ID;
"(" return OP;
")" return CP;
"," return COM;
";" return SEM;
"\n" return NL;
%%