%{
#include <stdio.h>
#include "y.tab.h"
%}
%%
"a" return X;
"b" return Y;
"c" return Z;
"\n" return NL;
. return C;
%%