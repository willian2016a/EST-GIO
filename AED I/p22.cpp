#include<iostream>
#include<string>
#include<fstream>
using namespace  std;


int main(){
	int aux=0;
	char letra;
	ifstream leitura;
	leitura.open("strings.txt");

	if(!leitura.is_open( )) 
	{
		cout<<"Não foi possível abrir arquivo! Programa será terminado!\n";
		leitura.clear( ); //reseta o objeto leitura, para limpar memória do sistema}
	}

	while((leitura.get() == " ") and (aux == 0)){
		
		cout<<letra;
		aux++;
	}
	leitura.close();
     cout<<letra;
	return 0;
}

