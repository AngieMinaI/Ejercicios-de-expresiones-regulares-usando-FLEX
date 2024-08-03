%{
#undef yywrap
#define yywarp () 1

/* Este archivo Flex reconocera los identificadores del lenguaje C mostrando en pantalla el mensaje correcto*/

#include <stdio.h>



%}

digito  [0-9]
letra  [a-zA-Z]
id      {letra}({letra}|{digito})*

%%

{id}    {printf("Es un identificador correcto.");
	    printf("\nIngrese un identificador en C: ");}

.* 	    {printf("No es un identificador correcto.");
	    printf("\nIngrese un identificador en C: ");}


%%
int main (int argc, char *argv[], char *env[])
{
	printf("\nIngrese un identificador en C: ");
	yylex();
	return 1;
}