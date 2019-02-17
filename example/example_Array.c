#include <stdio.h>
#include <crest.h>

int main(){

    int num = 10;
	int arr_2d[10][10];

    for(int i = 0; i<num; i++)
        for(int j =0; j < num; j++){
            CREST_int(arr_2d[i][j]);
    }

    for(int i = 0 ; i<num; i++){
        for(int j =0; j < num; j++){
            printf("%d", (arr_2d[i][j]));
        }
    }
}
