%{
#include<stdio.h>
#include "y.tab.h"
%}
%%
"\n" return NL;
"1" return A;
"0" return B;
. return C;
%%























