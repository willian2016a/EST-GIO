#include<iostream>
#include<string>
using namespace std;
int main(){
	int i,j,lb,cb;
    char m[15][15];
	for(i=0;i<15;i++){
		for(j=0;j<15;j++){
			cin>>m[i][j];
		}
	}

  
   for(i=0;i<3;i++){
	  cin>>lb>>cb;
	  lb--;
	  cb--;
	if(m[lb][cb] == 'D'){
		cout<<"destroier"<<endl;
	}
	if(m[lb][cb] == 'F'){
		cout<<"fragata"<<endl;
	}
	if(m[lb][cb] == 'L'){
		cout<<"lancha"<<endl;
	}
	if(m[lb][cb] == '-'){
		cout<<"agua"<<endl;
	}
}
	return 0;
}
