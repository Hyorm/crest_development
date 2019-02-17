//example6.c

#include <crest.h>
#include <stdio.h>

int max(int a, int b){

	if(a>b){return a;}
	else {return b;}
}

int my_abs(int a){

	if(a>0){return a;}
	else {return -a;}
}

int main(){

	int a, b;
	CREST_int(a);
	b = 3*a+1;
	if(b==7){
		max(a, 1);
		printf("b is 7, a=%d\n", a);
	}
	else {
		my_abs(b);
		printf("b is not 7, a=%d\n", a);
	}
	return 0;
} 
