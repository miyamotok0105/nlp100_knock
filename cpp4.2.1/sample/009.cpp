// Val4.cpp
#include <iostream>
using namespace std;

//関数の外で宣言された変数を外部変数またはグローバル変数
//関数の中で宣言された変数を内部変数

int a = 0;

void Inc()
{
    int b = 0;
    a++;
    b++;
    cout << a << " <- a | b -> " << b << endl;
    return;
}

int main()
{
    Inc();
    Inc();
    Inc();
    return 0;
}
