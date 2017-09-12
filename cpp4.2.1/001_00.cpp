//文字列"stressed"の文字を逆に（末尾から先頭に向かって）並べた文字列を得よ．
//g++ 001_00.cpp
//↓この書き方はなんだ？
#include <stdio.h>
#include <string.h>
// #include <typeinfo.h>
#include <typeinfo>
#include <iostream>


using namespace std;

int search(char str[]);

int main() {
	cout << "hello world";

	// char str[100];
	char str[ ] = "stressed";

	printf(" str is %s \n ", str);

	printf(" type is %s \n ", typeid(str).name());
	// str[] = "aaaaaaa";
	// str = cout;
	printf("文字列数は%d個です。\n",search(str));


	int i, j;


	cout << endl;
	return 0;
}


int search(char str[]){
	int i;
	int num = 0;

	for(i=0;i<100;i++){

		printf("%c ", str[i]);
		cout << (int)(unsigned char)str[i] << ", ";

		if(str[i] != '\0' || str[i] != ""){
			printf("!!");
			num++;
		}
	}
	return num;
}
