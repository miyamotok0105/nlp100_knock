// Val3.cpp
#include <iostream>
using namespace std;

int a = 0;

//ここでエラーが出るでOK
void Test()
{
    int b = 1;
    cout << a << b << c << d << endl;
    return;
}

int c = 2;

int main()
{
    int d = 3;
    Test();
    cout << a << b << c << d << endl;
    return 0;
}
