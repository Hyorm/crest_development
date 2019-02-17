//example.c
#include <crest.h> //for symbolic input
#include <stdio.h>
int main(){

	int a, b;
	CREST_int(a);
	b = 3 * a + 2;
	if (b == 11){
		printf("b is 11\n");
	} else {
		printf("b is not 11\n");
	}
	return 0;
}
