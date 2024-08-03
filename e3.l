%{
#undef yywrap
#define yywarp () 1

/* Este archivo Flex reconocera algunas palabras reservadas del lenguaje C mostrando en pantalla el mensaje correcto*/

#include <stdio.h>



%}

cond  	(if|then|else)
bucles  (do|while|for)
tipos	(int|double|float)
otros   (swicth|main|case|try)

%%

{cond}    {printf("Es un condicional.");
	      printf("\nIngrese una palabra reservada en C: ");}

{bucles}    {printf("Es un bucle.");
	        printf("\nIngrese una palabra reservada en C: ");}

{tipos}    {printf("Es un tipo.");
	        printf("\nIngrese una palabra reservada en C: ");}

{otros}    {printf("Es un otro tipo de palabra reservada.");
	        printf("\nIngrese una palabra reservada en C: ");}

.* 	    {printf("No es una palabra reservada.");
	    printf("\nIngrese una palabra reservada en C: ");}


%%
int main (int argc, char *argv[], char *env[])
{
	printf("\nIngrese una palabra reservada en C: ");
	yylex();
	return 0;
}