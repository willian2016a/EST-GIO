#include<iostream>
#include<string>
using namespace  std;



void primeira(int n){
	int i,l,p=0,val=1;
	string v[n],o[n];
	for(i=0;i<n;i++){
		cin>>v[i];
	}
	for(i=0;i<n;i++){
		val = 1;
	    for(l=0;l<p;l++){
			if(v[i] == o[l]){
				val = 0;
			}
		}
		if(val == 1){
			o[p] = v[i];
			p++;
		}
	}
	cout<<p<<endl;
	for(l=0;l<p;l++){
		cout<<o[l]<<endl;
	}
			
		
}


int main(){
	int n;
	cin>>n;
	primeira(n);
	return 0;
}


