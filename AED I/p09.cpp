#include<iostream>
#include<string>
using namespace std;
int main(){
	
	int soma=0,k=0,i,j,linha,coluna,n,mv;
	cin>>n;
	int m[n][n];
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			cin>>m[i][j];
		}
	}
	
	cin>>linha>>coluna;
	cin>>mv;
	string v[mv];
	for(i=0;i<mv;i++){
		cin>>v[i];
	}
	soma = soma + m[linha][coluna];
	m[linha][coluna] = 0;	
	while(k<mv){
		if(v[k] == "direita"){
			coluna++;
			soma = soma + m[linha][coluna];
			m[linha][coluna] = 0;
		}
		if(v[k] == "esquerda"){
			coluna--;
			soma = soma + m[linha][coluna];
			m[linha][coluna] = 0;
		}
		if(v[k] == "baixo"){
			linha++;
			soma = soma + m[linha][coluna];
			m[linha][coluna] = 0;
		}
		if(v[k] == "cima"){
			linha--;
			soma = soma + m[linha][coluna];
			m[linha][coluna] = 0;
		}
		cout<<soma<<endl;
		k++;
	}

	return 0;
}
