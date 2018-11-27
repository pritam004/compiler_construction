# compiler_construction
this contains the code for the compiler construction lab



to run the programs
install :

FLEX and BISON

run flex file :

lex X.l [X is the file name]

run yacc file

yacc -d X.y
lex X.l
gcc y.tab.c lex.yy.c


incase conatins math.h
gcc y.tab.c lex.yy.c -lm


happy coding :)
