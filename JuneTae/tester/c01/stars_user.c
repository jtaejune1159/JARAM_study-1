#include <stdio.h>
#include <stdlib.h>
int main(int argc, char* argv[]){
	int i;
	i = atoi(argv[1]);
	for(int a = i; a > 0 ; a--){
		for(int b = 0; b < a; b++){
			printf("*");
		}
		printf("\n");
	}

	return 0;
}
