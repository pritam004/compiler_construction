# compiler_construction
this contains the code for the compiler construction lab



to run the programs
install :

FLEX and BISON

run flex file :

lex X.l [X is the file name]

run yacc file

yacc -d X.y</br>
lex X.l</br>
gcc y.tab.c lex.yy.c</br>


incase conatins math.h</br>
gcc y.tab.c lex.yy.c -lm</br>


happy coding :)
