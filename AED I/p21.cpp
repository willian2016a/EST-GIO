#include<iostream>
using namespace  std;

void Fetuccine(int qtd,int a,int b){
	int fet[qtd],i,j;
	if(qtd == 1){
		cout<<a;
	}else if(qtd == 2){
		cout<<a<<' '<<b;
	}else if(qtd > 2){
		fet[0] = a;
		fet[1] = b;
		for(i=2;i<qtd;i++){
			j = i + 1;
			if(j%2 != 0){
				fet[i] = fet[i-1] + fet[i-2];
			}else{
				fet[i] = fet[i-1] - fet[i-2];
			}
		}
		for(i=0;i<qtd;i++){
			cout<<fet[i]<<' ';
		}
	}
  	
}

int main(){
	int qtd,a,b;
	cin>>qtd;
	cin>>a>>b;
	Fetuccine(qtd,a,b);
	return 0;
}

