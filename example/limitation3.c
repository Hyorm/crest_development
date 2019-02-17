// limitation3.c
// CREST cannot handle a non-linear arithmetic expression 
#include <crest.h>
#include <stdio.h>
int main(){
	int x;
	CREST_int(x);
	printf("x = %d\n", x);
	if ((x+1)*(x+1) == 4){ // Generate symbolic path formula
	// using a concrete value (i.e., x+1==4)
	// if ((x+1)*(x+1) == (long long) 4){ // Difference? 
		printf("ERROR\n");
	}else{
		printf("Fine\n");
	}
	return 0;
}
