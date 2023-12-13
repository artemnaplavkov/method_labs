#include<stdio.h>
#include<stdlib.h>
int main(){
	int n;
	printf("Введите кол-во строк:");
	scanf("%d",&n);
	for(int i=0;i<9*n;i++){
		if(i%9==0){
                        i++;
                        printf("\n");
               	};
		if(i%2==0)
                	printf("#");
		if(i%2!=0)
                	printf("_");
	};
	printf("\n");
	return 0;
}

