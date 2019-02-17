// limitation3-bitwise_solved.c
// CREST cannot handle a non-linear arithmetic expression
// bita is symbolic array, and bitb is constant
// return 0 if the result of bit_and is 0, return 1 otherwise
#include <crest.h>
#include <stdio.h>
#define BITSIZE 32
int bit_and(int *bita, int *bitb);
int* itobs(int n, int *bs);
int bitmask[BITSIZE];
int bitopt[BITSIZE];
int OPT=1<<24;
int main() {
	int i;
	for (i = BITSIZE - 1; i >= 0; i--) {
		CREST_int(bitmask[i]);
	}
	if (bit_and(bitmask, itobs(OPT, bitopt))) { 
		printf("Taking true branch\n");
	} else {
		printf("Taking false branch\n");
	}
	return 0; 
}
int bit_and(int *bita, int *bitb) {
	int i;
	int flag = 0;
	for (i = 0; i < BITSIZE; i++) {
		if (bita[i] != 0 && bitb[i] == 1) {
			flag = 1;
		}
	}
	return flag;
}
// convert an unsigned long int variable into an array, 
// each cell save value of one bit the variable
int* itobs(int n, int *bs) {
	int i;
	for (i = BITSIZE - 1; i >= 0; i--, n = n / 2) {
		bs[i] = n % 2;
	}
	return bs; 
}
