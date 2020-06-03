#include <stdio.h>

int main(){
	int sum, i;
	int nums[10] = {5, 9, 12, 5, 6, 3, 8, 7, 10, 4};
	
	for(i = 0; i < 10; i++)
		sum += nums[i];
	
	printf("La media aritmetica es:  %f", (float)sum / i );
}
