#include<iostream>

using namespace std;

int main(){
  int i=0,j=0,x,v=0;
  int valido;
  valido = 0;
   cin>>x;
	while((i<x) and (valido == 0)){
		while((j<=i) and (valido == 0)){
			v++;
			if(v == x){
				valido++;
			}
			j++;
		}
		j=0;
		i++;
	}
	cout<<i;

return 0;
}
