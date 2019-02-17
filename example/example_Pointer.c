#include <stdio.h>
#include <stdlib.h>
#include <crest.h>
int main(){

	int** arr_2d;
	int num = 10;

	arr_2d = (int**) malloc ( sizeof(int*) * num );

	for(int i = 0; i < num; i++){
		arr_2d[i] = (int*)malloc(sizeof(int)*num);
	}

	for(int i = 0; i<num; i++)
		for(int j =0; j < num; j++){
			CREST_int(arr_2d[i][j]);
	}

	for(int i = 0 ; i<num; i++){
		for(int j =0; j < num; j++){
			printf("%d", arr_2d[i][j]);
		}
		free(arr_2d[i]);
	}
	free(arr_2d);
}
