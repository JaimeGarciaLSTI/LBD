#include <stdio.h>

int main()
{
	int n, cont, a=0, b=1, c;
	
	printf("Introduce los numeros a generar de la serie Fibonacci: ");
	scanf("%d", &n);
	
	printf("1");
	for(cont=0; cont<n-1; cont++)
	{
		c= a + b;
		printf(", %d", c);
		a=b;
		b=c;
	}
	printf("\n");
	return 0;
}
