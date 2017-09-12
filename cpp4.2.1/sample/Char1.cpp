// Char1.cpp
//http://www7b.biglobe.ne.jp/~robe/cpphtml/html01/cpp01022.html
#include <iostream>
using namespace std;

int main()
{
    cout << "「0」にふられた番号は "
         << (int)(unsigned char)'0' << " です。" << endl;
    cout << "「あ」にふられた番号は "
         << "あ" << " です。" << endl;

    return 0;
}
