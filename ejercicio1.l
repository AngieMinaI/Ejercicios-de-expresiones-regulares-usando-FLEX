%{
#undef yywrap
#define yywrap() 1

/* Este es un programa en Lex que agrega números de línea a las líneas de texto,
imprimiendo el nuevo texto en la salida estándar.
*/

# include <stdio.h>
int nLine = 1;
%}
 //va la exp reg
line    .*\n

%%
 //las reglas

{line}  {printf("%5d %s",nLine++,yytext);}

%%

int main(int argc, char *argv[ ], char *envp[ ])
{
yylex();
return 0;
}