#include<iostream>
#include<cmath>
using namespace std;

int main()
{
    int i, t = 0, d = 1;
    double x, drob, n, y, z;
    cout<<"Введите вещественное число: ";
    cin>>x;

    int cel = (int)x;
    while(cel)
    {
        t += (cel%2)*d;
        cel /= 2;
        d *= 10;
    }

    drob = modf(x, &n);
    int a[23];

    for(i = 0; i < 23; i++)
    {
        drob *= 2;
        y = modf(drob, &z);
        a[i] = (int)z;
        if(drob >= 1)
            drob = drob - 1;
    }

    cout<<"Число в двоичной системе: "<<t<<",";
    for(i = 0; i < 23; i++)
        cout<<a[i];

    cout<<endl;
    return 0;
}
