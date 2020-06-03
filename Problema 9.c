#include <stdio.h>

int main(){
	float SUMA = 1;
	int i;
	
	printf("SUMA = 1 ");
	for (i = 1; i < 100; i++){
		printf("+ %d/%d ", i, i + 1);
		SUMA = SUMA + ((float)i / ((float)i + 1));
		if(i%10 == 0)
  			 printf("\n");
	}
	
	printf("\n\nValor de SUMA = %.2f", SUMA);
}
