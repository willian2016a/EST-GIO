#include<iostream>

using namespace std;

int main(){
	int a,b,n,i,maior;
	cin>>n;
	int v[n];
	for(i=0;i<n;i++){
		cin>>v[i];
	}
	cin>>a;
	cin>>b;
	if(a>b){
      maior = a;
      a = b;
      b = maior;
	}
	a--;
	b=b-2;
	for(i=b;i>a;i--){
		cout<<v[i];
	}
	return 0;
}
