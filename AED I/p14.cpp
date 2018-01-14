#include<iostream>
#include<string>
using namespace  std;

struct aluno{
	string matricula;
	string nome;
	int nota;
};
int main(){
	int i,j=0,n,maior=-1;
	float media=0,pc;
	string nerd;
	cin>>n;
	string r[n];
	aluno v[n];
	for(i=0;i<n;i++){
		cin>>v[i].matricula;
		cin>>v[i].nome;
		cin>>v[i].nota;
		
		if((v[i].nota > maior) and (v[i].nota != maior)){
			maior = v[i].nota;
			nerd = v[i].nome;
		}
		media = media + v[i].nota;
		if(v[i].nota < 60){
			pc++;
			if(v[i].nota == 0){
				r[j] = v[i].matricula;
				j++;
			}
		}
		
	}
	media = media/n;
	pc = (1-(pc/n))*100;
	
	cout<<media<<endl;
	cout<<pc<<"%"<<endl;
	
	for(i=0;i<j;i++){
		cout<<r[i]<<endl;
	}
	cout<<nerd<<endl;
	
	
	return 0;
}
