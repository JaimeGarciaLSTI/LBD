#include <stdio.h>

void MLR(int i, float vao, float vio, float mlr);
void BDC(int i, float vao, float vio, float mbdd);
void SDA(int i, int n ,int x, float vao, float vio, float msd, float tmsd);


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
		MLR(i, vao, vio, mlr);
		break;
		case 2:
		BDC(i, vao, vio, mbdd);
		break;
		case 3:
		SDA(i, x, n, vao, vio, msd, tmsd);
		break;
	}
}
	
void MLR(int i, float vao, float vio, float mlr){
	printf("\nMetodo de Linea Recta");
	mlr=vao/vio;
	printf("\nA%co\tValor Inicial\tDepreciacion\tValor Final",164);
		
	for(;i<=10;i++){
		printf("\n%d\t$%.2f",i, vao);
		vao=vao-mlr;
		printf("\t$%.2f\t$%.2f", mlr, vao);
	}
	
}

void BDC(int i, float vao, float vio, float mbdd){
	printf("\nMetodo Balance Doblemente Declinante");
	printf("\nA%co\tValor Inicial\tDepreciacion\tValor Final",164);
	
	for(;i<=10;i++){
		printf("\n%d\t$%.2f",i, vao);
		mbdd=(2/ vio)*vao;
		vao=vao-mbdd;
		printf("\t$%.2f\t$%.2f", mbdd, vao);
	}
}

void SDA(int i, int n, int x, float vao, float vio, float msd, float tmsd){
	printf("\nMetodo Suma de los Digitos del A%co",164);
	printf("\nA%co\tValor Inicial\tDepreciacion\tValor Final",164);
	
	for(;x<=(int)vio;x++){
		n=n+x;
	}
	for(;i<=10;i++){
		printf("\n%d\t$%.2f",i, vao);
		msd=(vio/n)*vao;
		tmsd=msd*vao;
		vao=vao-msd;
		printf("\t$%.2f\t$%.2f", msd, vao);
		n=n-i;
	}
}
