%{
#undef yywrap
#define yywrap() 1

/* Este es un programa en Lex que agrega números de línea a las líneas de texto,
imprimiendo el nuevo texto en la salida estándar.
*/

# include <stdio.h>
# include <stdlib.h>

%%
 //las reglas

digito [0-9]
natural {digito}+
entero (\+|-)?{natural}
%%

{natural}   {
                printf("Es un numero natural")
                printf("\nIngrese un numero en C: ")
            }

{entero}   {
                printf("Es un numero entero")
                printf("\nIngrese un numero en C: ")
            }
        
.*   {
                printf("No es un entero reconocido")
                printf("\nIngrese un numero en C: ")
            }
int main(int argc, char *argv[ ], char *envp[ ])
{
    printf("\nIngrese un numero en C:")
    yylex();
    return 0;
}