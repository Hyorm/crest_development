#include<stdio.h>
#include "example_extern.h"

int main(){

	int a,b,c, s;

	scanf("%d", &a);
	scanf("%d", &b);
	
	c = readCrest();

	s = sum(a,b,c);
	printf("%d", s);


}
