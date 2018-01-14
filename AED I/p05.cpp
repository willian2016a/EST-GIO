#include<iostream>
#include<string>
using namespace std;

int main(){
	string frase1,frase2;
	int tam1,tam2;
	
	getline(cin,frase1);
	getline(cin,frase2);
	tam1 = frase1.length();
	tam2 = frase2.length();
	
	if(tam1 > tam2){
		tam1 = tam2;
	}
     
     for (int i=0;i<tam1;i++){
		if(frase1[i] == frase2[i] and frase1[i]!= ' '){
			cout<<frase1[i];
		}
	 }
	return 0;
}
