#include<iostream>

using namespace std;

int main(){
  int i=0,j=0,a,b,c;
  cin>>a;
  cin>>b;
  c = (a%b);
 if(c == 0){
	  c = (a+b);
	  while(i<c){
		while(j<=i){
		  if(j == 0){
			  cout<<"G";
		  }else{
			 cout<<"-G"; 
		  }
		    j++;
		  }
		  cout<<""<<endl;
		 j=0;
		 i++; 
	  }
  }else{
	   c = (a+b);
	  while(i<c){
		while(j<=i){
		  if(j == 0){
			  cout<<"-G-";
		  }else{
			 cout<<"G-"; 
		  }
		    j++;
		  }
		  cout<<""<<endl;
		 j=0;
		 i++; 
	  }
  }

return 0;
}
