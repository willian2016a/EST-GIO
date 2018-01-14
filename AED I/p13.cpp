#include<iostream>
#include<string>
using namespace  std;
struct dicionario {
	string local;
	float temp;
	string unid;
};
int main(){
	float maior=-9999999,tempC;
	int i;
	string destino;
	dicionario v[3];
	
	
	for(i=0;i<3;i++){
		cin.ignore();
		getline(cin,v[i].local);
		cin>>v[i].temp;
		cin>>v[i].unid;
		if(v[i].unid == "Fahrenheit"){
			tempC = (v[i].temp - 32)/1.8;
			if(tempC > maior){
				maior = tempC;
				destino = v[i].local;
			}	
		}else{
			if(v[i].temp > maior){
				maior = v[i].temp;
				destino = v[i].local;
			}	
		}
	}
	
	cout<<destino<<endl;
	cout<<maior;
	
	return 0;
}
