#include <stdlib.h>
#include <conio.h>
#include <stdio.h>

 int dia, mes, anio;

 int main ()
 {
 	printf("\n Introduzca el anio: ");
 	scanf("%d", &anio);
 		if(anio >= 1960 && anio <= 2019)
 			printf("\n El anio es correcto");
 			else {
 				printf("\n El año es incorrecto");
 		exit(0);
 	}


 	printf("\n");
 	printf("\n Introduzca el mes: ");
 	scanf("%d", &mes);
 	if(mes >= 1 && mes <= 12)
 			printf("\n El mes es correcto");
 			else {
 				printf("\n El mes es incorrecto");
 				exit(0);
 			}

	printf("\n");
	printf("\n Introduzca el dia: ");
 	scanf("%d", &dia);
 	if(dia >= 1 && dia <= 31)
 			printf("\n El dia es correcto");
 			else {
 				printf("\n El dia es incorrecto");

 				exit(0);
				 }
	printf("\n");
	printf("\nLa fecha en formato dd-mm-aaaa es: %d-%d-%d", dia, mes, anio);
				 
     switch(mes)
     {
              case 1:
                   
                   if (dia>20)
                   printf("\nSu signo es acuario\n");
                   else
                   printf("\nSu signo es capricornio\n");
                   break;
                   
              case 2:
                   
                    if (dia>19)
                    printf("\nSu signo es piscis\n");
                    else
                    printf("\nSu signo es acuario\n");
                    break;
              
              case 3:
                  
                   if (dia>20)
                   printf("\nSu signo es Aries\n");
                   else 
                   printf("\nSu signo es piscis\n");
                   break;
                   
              case 4:
                    
                   if (dia>20)
                   printf("\nSu signo es tauro\n");
                   else
                   printf("\nSu signo es aries\n");
                   break;
              
              case 5:
                  
                   if (dia>21)
                   printf("\nSu signo es geminis\n");
                   else
                   printf("\nSu signo es tauro\n");
                   break;
                   
              case 6:
                  
                   if (dia>21)
                   printf("\nSu signo es cancer\n");
                   else
                   printf("\nSu signo es geminis\n");
                   break;
                   
              case 7:    
                  
                   if (dia>23)
                   printf("\nSu signo es leo\n");
                   else
                   printf("\nSu signo es cancer\n");
                   break;
                   
              case 8:
                  
                   if (dia>23)
                   printf("\nSu signo es Virgo");
                   else
                   printf("\nSu signo es leo");
                   break;
                   
              case 9:
              
                   if (dia>23)
                   printf("\nSu signo es libra\n");
                   else
                   printf("\nSu signo es virgo\n");
                   break;
                   
               case 10:
               
                   if (dia>23)
                   printf("\nSu signo es escorpio\n");
                   else
                   printf("\nSu signo es libra\n");
                   break;
                   
                case 11:
                
                   if (dia>22)
                   printf("\nSu signo es sagitario\n");
                   else
                   printf("\nSu signo es escorpio\n");
                   break;
                   
                case 12:
                
                   if (dia>21)
                   printf("\nSu signo es capricornio\n");
                   else
                   printf("\nSu signo es sagitario\n");
                   break;
                   
                   
                 system ("pause");
             }
}
