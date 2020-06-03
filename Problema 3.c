#include <stdlib.h>
#include <stdio.h>
#include "puntohache.h"

int main() {
    int dia, mes, anio, a, diaSum;

    printf("Introduzca el dia: ");
    scanf("%d", & dia);

    printf("\nIntroduzca el mes: ");
    scanf("%d", & mes);
    
    printf("\nIntroduzca el anio: ");
    scanf("%d", & anio);
    
    if(comprobarFecha(dia,mes,anio) == 1){
    	
	    printf("\nLa fecha en formato dd-mm-aaaa es: %d-%d-%d", dia, mes, anio);
	
	    if (dia >= 1 && mes >= 1 && anio >= 1960 && anio <= 2019) {
	        diaSum = (int)(30.42 * (mes - 1)) + dia;
	        if (mes == 2)
	            diaSum++;
	        if (mes > 2 && mes < 8)
	            diaSum--;
	        if (anio % 4 == 0 && mes > 2)
	            diaSum++;
	        if (anio % 4 == 0 && anio % 100 != 0 || anio % 400 == 0) {
	            diaSum = a * 1461;
	        }
	        a = anio - 1960;
	        if (a != 0)
	            diaSum = a * 365;
	        printf("\n\nFecha: %d-%d-%d \n", dia, mes, anio);
	        printf("\nDias desde 1-1-1960: %d", diaSum);
	    }
	}else{
		printf("\n\nIntroduzca una fecha valida.");
		exit(0);
	}
}
