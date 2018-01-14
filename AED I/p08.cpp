#include<iostream>

using namespace std;

int main(){
 int n,i,j,d,soma=0,meio=0,dsi=0;
 cin>>n;
 cin>>d;
 int m[n][n];
 for(i=0;i<n;i++){
	 for(j=0;j<n;j++){
		 cin>>m[i][j];
	 }
 }

 meio = (n/2);
 dsi = meio - d;
 int ini = dsi;
 while(dsi<=(ini+d*2)){
	soma = soma + m[meio-d][dsi]; 
	soma = soma + m[meio+d][dsi];
	dsi++; 
 }
 
 dsi = meio - d + 1;
 ini = dsi;
 while(dsi<=(ini+(d*2)-2)){
	soma = soma + m[dsi][meio-d]; 
	soma = soma + m[dsi][meio+d];
	dsi++; 
 }
 cout<<soma;
return 0;
}
