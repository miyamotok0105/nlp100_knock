// String1.cpp
//http://www7b.biglobe.ne.jp/~robe/cpphtml/html01/cpp01023.html
#include <iostream>

using namespace std;

int main()
{
    int i;
    char szHello[] = "やぁ、こんちは";

    cout << "「" << szHello << "」を文字コードに変えると、" << endl;

    for(i = 0; i < 14; i++)
        cout << (int)(unsigned char)szHello[i] << ", ";

    cout << (int)(unsigned char)szHello[14] << endl
         << "になります。" << endl;

    return 0;
}
