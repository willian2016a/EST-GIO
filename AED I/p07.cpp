#include<iostream>

using namespace std;

int main(){
 int i,soma=0,j=1,c,k=1,g;
 int a;
 int n;
 cin>>n;
 int m[n][n];
 
 for(i=0;i<n;i++){
	 for(g=0;g<n;g++){
		 cin>>m[i][g];
	  }
 }
 a = (n/2);
 c=a;
 while(c<n){
	 soma = soma + m[a][c];
	 c++;
 }
 c=a;
 a++;
 while(a<n){
	 k=1;
	 while(k<=j){
		 soma = soma + m[c-k][a];
		 soma = soma + m[c+k][a];
		 k++;
	 }
	 j++;
	 a++;
 }
 
 cout<<soma;
return 0;
}
