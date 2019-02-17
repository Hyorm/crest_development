//example4.c
#include <crest.h> //for symbolic input
#include <stdio.h>
int main(){
	char arr[4]; int i;
	FILE* fp;
	fp = fopen("test.txt", "r");
	fgets(arr, 3, fp);
	for(i = 0 ; i < 3 ; i++){ CREST_char(arr[i]); }
	if(arr[0] == arr[1] && arr[1] == arr[2]){
		printf("Same characters\n");
	}else{
		printf("Different characters\n");
	}
	
        return 0;
}
