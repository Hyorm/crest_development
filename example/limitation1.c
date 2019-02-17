//limitation1.c
//External library example.
//when a target program calls an external library function
//CREST may occur 'prediction failure' error since CREST
//does not know a body of the external function

#include<crest.h>
#include<stdio.h>
#include<stdlib.h>

int main(){
	int x;
	CREST_int(x);
	printf("x == %d, ",x);
	if(x == abs(x)){
	//Generate symbolic path formula using
	//a concrete return value (i.e., x==0)
		printf("x >= 0\n");
	}else{
		printf("x < 0\n");
	}
	return 0;
}
