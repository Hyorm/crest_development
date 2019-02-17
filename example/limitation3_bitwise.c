// limitation3-bitwise.c
// CREST cannot handle a non-linear arithmetic expression
#include <crest.h>
#include <stdio.h>
int OPT=1<<24;

int main() {	
	int option_mask32;
	CREST_int(option_mask32);
	if (option_mask32 & OPT) {
		printf("Taking true branch\n");
	} else {
		printf("Taking false branch\n");
	}
	return 0; 
}
