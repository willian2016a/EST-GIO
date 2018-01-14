#include<iostream>
#include<string>

using namespace std;
void busca(int *v,string *n,int numero,string naipe,int X,int Y,int Z){
	int l;
	int pi=0,aux=0,rep=0;
	for(l=0;l<10;l++){
		if((v[l] == numero) and (rep == 0)){
			if((n[l] == naipe)){
				pi = Y;
				rep = 1;
				aux = 1;
			}else{
			pi = X;
			aux = 1;
			rep = 1;
		    }
		}else if((v[l] == numero) and (rep == 1)){
			if((n[l] == naipe)){
				pi = Y;
				rep = 1;
				aux = 1;
			}
			
		}

	}
	if(aux != 1){
		pi = Z;
	}
	cout<<pi;
}



int main(){
	int i,v[10],numero,X,Y,Z;
	string n[10],naipe;
	
	for(i=0;i<10;i++){
		cin>>v[i];
	}
	for(i=0;i<10;i++){
		cin>>n[i];
	}
	cin>>numero;
	cin>>naipe;
	cin>>X>>Y>>Z;
	busca(v,n,numero,naipe,X,Y,Z);
	
	return 0;
}
