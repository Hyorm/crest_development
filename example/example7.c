//example7.c
#include <crest.h>
#include <stdio.h>

int main(){

	int stopPoint;

	CREST_int(stopPoint);

	int i = 0;

	while(i<stopPoint%9){
		printf("This is \'for\'\n");
		i++;
	}
	return 0;
}
