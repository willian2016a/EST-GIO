#include<iostream>
using namespace std;
struct aluno {
    int id;
    int matricula;
};
int main(){
	int n,j,i,nums[4],auxid,auxmat,posicao=-1,inicio=0,meio;
	cin>>n;
	int fim=n-1;
	aluno v[n];
	for(i=0;i<n;i++){
		cin>>v[i].id;
		cin>>v[i].matricula;
	}
	for(j=0;j<4;j++){
		cin>>nums[j];
	}
	for(i=0;i<n;i++){
		for(j=0;j<(n-1);j++){
			if(v[j].id > v[j+1].id){
				auxid = v[j].id;
				auxmat = v[j].matricula;
				v[j].id = v[j+1].id;
				v[j].matricula = v[j+1].matricula;
				v[j+1].id = auxid;
				v[j+1].matricula = auxmat;
			}
	    }
	}
	for(j=0;j<n;j++){
		cout<<v[j].id<<' ';
	}
	cout<<' '<<endl;
	for(j=0;j<4;j++){
	   while(inicio<=fim){
		   meio = (inicio+fim)/2;
		   if(nums[j] == v[meio].id){
			   posicao = meio;
			   inicio = fim+1;
			   cout<<v[meio].matricula<<endl;
		   }else if(nums[j] < v[meio].id){
			   fim = meio - 1;
		   }else{
			   inicio = meio + 1;
		   }
	   }
	   if(posicao == -1){
		   cout<<"0"<<endl;
	   }
		   posicao = -1;
		   inicio = 0;
		   fim = n - 1;
	}
	return 0;
}
