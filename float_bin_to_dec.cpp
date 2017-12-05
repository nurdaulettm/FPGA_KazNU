#include<iostream>
#include<cmath>
using namespace std;
#define N 32
int main()
{
	int a[N] = {0,1,0,0,0,1,0,0,0,1,1,1,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0}, i;
	double b = 0;
	int var = 1;
	double sum_m  = 0, sum_frac = 0;
	/*for(i = 0; i < N; i++)
 	    cin>>a[i];*/
 	int j = 0;
 	for(i = 8; i >= 1; i--)
 	{
 		
 		b += a[i] * (pow(2,j));
 		j++;
	}
 	var = var + b - 127;
 	
 	int mass[var];
 	mass[0] = 1;
 	for(i = 1; i < var; i++)
 		mass[i] = a[i+8];
 	int k = 0;
	for(i = var - 1; i >= 0; i--)
		{
			sum_m += mass[i] * (pow(2,k));
			k++;
		}  	
	int l = 23 - var, t = -1;
	double frac[l];
	for(i = 0; i < l; i++)
		{
			frac[i] = a[i + var + 8 + 1];
			sum_frac += frac[i] * (pow(2,t));
			t--;
		}
	double fractpart, intpart;
	fractpart = modf(sum_frac, &intpart);
 	cout<<sum_m<<"."<<fractpart<<endl;
 	return 0;
}
