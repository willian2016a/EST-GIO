#include<iostream>
#include<string>

using namespace std;

int main(){
   int carga,cavalos,vacas,galinhas;
   int qtdc,qtdv,qtdg;
   bool g=false;
   bool v=false;
   bool c=false;
   cin>>carga;
   cin>>cavalos;
   cin>>vacas;
   cin>>galinhas;
 
   qtdg = galinhas;
   qtdv = vacas;
   qtdc = cavalos;
   
   
   while((qtdg>0) and (g==false)){
	 if((carga-(2*qtdg)) >= 0){
		  carga = carga - (2*qtdg);
		  g = true;
		  qtdg++;
	  }
	  qtdg--;
  }

   while((qtdv>0) and (v==false)){
	 if((carga-(150*qtdv)) >= 0){
		  carga = carga - (150*qtdv);
		  v  = true;
		  qtdv++;
	  }
	  qtdv--;
  }
 
  
  while((qtdc>0) and (c==false)){
	 if((carga-(250*qtdc)) >= 0){
		  carga = carga - (250*qtdc);
		  c = true;
		  qtdc++;
	  }
	  qtdc--;
  }
  
   cout<<qtdc<<endl;
   cout<<qtdv<<endl;
   cout<<qtdg<<endl;
   
   
   
   
   
   
   
return 0;
}
