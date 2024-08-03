%{
#undef yywrap
#define yywarp () 1

/* Este archivo Flex reconocera numero del sistema decimal y los convertirá al sistema Hexadecimal, indicando cuantas veces hizo el cambio */

#include <stdio.h>
#include <stdlib.h>

int count = 0;

%}

digito [0-9]
numero {digito}+

%%

{numero}    {int n = atoi(yytext);
			 if (n > 9) count++;
			 printf("Hexadecimal %x\n",n);
			 printf("\nIngrese un numero en base 10: ");}
.*		 	{printf("\nError.....Ingrese un numero en base 10: ");}
          
%%
int main (int argc, char *argv[], char *env[])
{
	printf("\nIngrese un numero en base 10: ");
	yylex();
	printf("\nTotal de cambio: %d\n", count);
	return 1;
}