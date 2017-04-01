#include <iostream>
#include <cmath>
using namespace std;
int main(){
    int n;
    cout<<"enter n"<<endl;
    cin>>n;
    double arr[n][n+1],x[n];
    cout<<"the matrix:"<<endl;
    for(int i=1;i<=n;i++){
        for(int j=1;j<=n+1;j++){
            cin>>arr[i][j];
        }
    }
    double tol;
    cout<<"Enter Tol: ";
    cin>>tol;
    cout<<"enter x"<<endl;
    for(int i=1;i<=n;i++)
        x[i] = 0;
    
    int i=1;
    while(i>0){
        double sum=0,temp;
        for(int j=1;j<=n;j++){
            if(i!=j)
                sum=sum+arr[i][j]*x[j];   
        }
        temp=(arr[i][n+1]-sum)/arr[i][i];
        if(fabs(temp-x[i])<tol)
            i=0;
        else
        {
            x[i]=temp;
            i++;
            if(i==n+1) 
                i=1;
        }
    }
    for(int i=1;i<=n;i++)
        cout<<x[i]<<" ";
    
    return 0;
}
