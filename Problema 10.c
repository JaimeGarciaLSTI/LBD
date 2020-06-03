#include <stdio.h>
int n = 1, i = 1, may170 = 0, men150 = 0;
float est = 0, sum = 0;

int main(){
	
	
	printf("Ingrese el numero de personas a evaluar:  ");
	scanf("%d",&n);
	float pers[n + 1];
	
	printf("\nIngrese las estaturas: ");
	for(i = 0; i < n; i++){
		printf("\nPersona %d:  ",i + 1);
		scanf("%f",&pers[i]);
		
		sum = sum + pers[i];
		
		if(pers[i] > 1.70)
			may170++;
		else if(pers[i] < 1.50)
		    men150++;
	}
	
	printf("\nEl promedio de estaturas es de %.2f", sum / (float) n);
	printf("\nEl total de personas es de %d", n);
	printf("\n%.2f\%% de las personas miden mas de 1.70.", may170 * 100.0 / n);
	printf("\n%.2f\%% de las personas miden menos de 1.50.", men150 * 100.0 / n);
}
