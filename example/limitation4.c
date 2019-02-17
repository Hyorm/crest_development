// limitation4.c
// Real numbers cannot be fully handled by CREST
#include <crest.h>
#include <stdio.h>
int main(){
	int x;
	CREST_int(x);
	printf("x = %d\n", x);
	if (x + 2.3 == 4 + 2.4){
		printf("x is 4\n");
	}else{
		printf("x isn't 4\n");
	}
	return 0;
}
