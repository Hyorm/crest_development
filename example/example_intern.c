#include<stdio.h>

int readCrest();
int sum(int a, int b, int c);

int main(){

	int a,b,c, s;

	scanf("%d", &a);
	scanf("%d", &b);
	
	c = readCrest();

	s = sum(a,b,c);
	printf("%d",s);


}

int readCrest(){
	int fc;
	scanf("%d", &fc);
	return fc;
}

int sum(int a, int b, int c){
	return a+b+c;
}
