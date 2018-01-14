#include<iostream>

/// MODIFICADO PARA SER USADO COMO FUNÇÃO(PARÂMETRO) //////////
using namespace  std;
void mostrar(int n, int v[]){
	int i=0,validos[n],val=0;
	for(i=0;i<n;i++){
		if(v[i]%2 == 0){
			v[i] = -1;
		}else{
			validos[val] = v[i];
			val++;
		}
	}
	for(i=0;i<val;i++){
		if(i == (val-1)){
			cout<<validos[i]<<endl;
		}else{
			cout<<validos[i]<<' ';
		}
		
    }
    cout<<val;
}

int main(){
	int i,n;
	cin>>n;
	int v[n];

	for(i=0;i<n;i++){
		cin>>v[i];
		//cout<<v[i]<<endl;
	}
	mostrar(n,v);
	return 0;
}
