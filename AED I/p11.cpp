#include<iostream>

using namespace std;

int main(){
	int i,j,b,v,k=0,l=0;
	cin>>b;
	cin>>v;
	int m[b][v];
	for(i=0;i<b;i++){
		for(j=0;j<v;j++){
			cin>>m[i][j];
		}
	}
	
	while(k<v){
		if(l == 0){
			while(l<b){
				cout<<m[l][k]<<' ';
				l++;
			}
		}else{
			l--;
			while(l>=0){
				cout<<m[l][k]<<' ';
				l--;
			}
			l=0;
		}
		
		k++;
		
	}
	
	
	return 0;
}
