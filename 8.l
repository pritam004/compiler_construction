%{
#include <stdio.h>
#include "y.tab.h"
%}
%%
"(" return X;
")" return Y;
"\n" return NL;
%%
