#include <stdio.h>
#include "puntohache.h"

int main(){
	
	int a,i=1,x=1;
	float n=0;
	float vao,vio;
	float mlr, tmlr;
	float mbdd, tmbdd;
	float msd, tmsd;
		
	printf("Introduzca el valor original del objeto: ");
	scanf("%f", &vao);
	printf("\nIntroduzca la vida del objeto: ");
	scanf("%f", &vio);
	
	printf("\n\nMetodo a utilizar para la depreciacion:");
	printf("\n1-Linea Recta \n2-Balance Doblemente Declinante \n3-Suma Digitos\n");
	scanf("%d",&a);
	
	switch(a){
		case 0:
			printf("Introduzca un numero valido");
		break;
		case 1:
		MLR(vao, vio, mlr);
		break;
		case 2:
		BDC(vao, vio, mbdd);
		break;
		case 3:
		SDA(x, n, vao, vio, msd, tmsd);
		break;
	}
}



