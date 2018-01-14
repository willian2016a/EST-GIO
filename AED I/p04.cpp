#include<iostream>

using namespace std;

int main(){
	bool caixa=false;
	float vol,voli;
	int tempo=0,t=0;
	cin>>vol;
	voli = vol;
	vol = vol*0.1;
	
	while(!caixa){
		if((tempo%30 == 0) and (tempo != 0)){
			vol = (vol*0.97) + (voli*0.05) + 10;
			cout<<vol<<endl;
			if(vol>=voli){
				caixa = true;
				t=tempo;
			}
		}
		tempo++;
	}
	cout<<t;
	return 0;
}
