#include<iostream>
#include<string>
using namespace  std;
struct presente{
	string nome;
	float preco;
};

int main(){
	float limite;
	int i,j,blz=0;
	string c[5];
	presente v[5];
	for(i=0;i<5;i++){
		cin>>v[i].nome;
		cin>>v[i].preco;
	}
	cin>>limite;
	for(j=0;j<5;j++){
	  cin>>c[j];
    }
	for(j=0;j<5;j++){
	  if(c[j] == "nao"){
		  if((limite - v[j].preco) >= 0){
			  cout<<v[j].nome<<' '<<v[j].preco<<endl;
			  blz = 1;
		  }
	  }
    }
 
	if(blz == 0){
		cout<<"Ele ficou sem presente...";
	}
	return 0;
}
