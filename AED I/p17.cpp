#include<iostream>

using namespace  std;
int capicua(string n){
	
	int i,tam,conf=1;
	tam =  n.length();
	for(i=0;i<tam;i++){
		if(n[i] != (n[tam-1-i])){
			conf = 0;
		}
	}
	cout<<conf;
	return conf;
}

void teste(int nums){
	
	int i,j,tam,conf,k=0;
	string maior="-999999",menor="999999",v[nums];
	string numero;
	for(i=0;i<nums;i++){
		
		conf=1;
		cin.ignore();
		getline(cin,numero);
		tam = numero.length();
		for(j=0;j<tam;j++){
		if(numero[j] != (numero[tam-1-j])){
			conf = 0;
		}
	}
	if(conf == 1){
			if(numero > maior){
				maior = numero;
				cout<<maior<<"maior"<<endl;
			}
			if(numero < menor){
				menor = numero;
				cout<<menor<<"menor"<<endl;
			}
		}
	if(conf == 0){
		v[k] = numero;
		k++;
	}
	cout<<"passada"<<i<<endl;
}


    for(i=0;i<k;i++){
		cout<<v[i]<<endl;
	}
	if(menor != "999999"){
		cout<<menor<<endl;
		cout<<"sdsdasd"<<endl;
	}
	
	if(maior != "-999999"){
		cout<<maior<<endl;
		cout<<"uuuuuu"<<endl;
	}
	
}


int main(){
    /*string n;
    cin>>n;
    capicua(n);*/
    int nums;
    cin>>nums;
    teste(nums);
	return 0;
}
