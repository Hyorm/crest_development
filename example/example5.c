//example5.c
#include <crest.h>
#include <stdio.h>
struct Complex{
	int imaginary;
	int real;
}typedef Complex;
int main() {
	Complex a;
	CREST_int(a.imaginary);
	a.real = 3 * a.imaginary + 2;
	if (a.real == 11) {
		printf("a.real is 11\n");
	} else {
		printf("a.real is not 11\n");
	}
	return 0;
}
