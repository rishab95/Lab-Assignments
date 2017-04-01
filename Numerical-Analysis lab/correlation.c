#include <stdio.h>
#include <math.h>
int main()
{
int n,i;
printf("enter n\n");
scanf("%d",&n);
int x[n],y[n];
printf("enter points\n");
for(i=0;i<n;i++)
scanf("%d %d",&x[i],&y[i]);
float meanx,meany,sumx=0,sumy=0,cov,sx=0,sy=0,r;
for(i=0;i<n;i++)
{
        sumx+=x[i];
        sumy+=y[i];
}
meanx=sumx/n;meany=sumy/n;
float temp=0;
for(i=0;i<n;i++)
        temp+=(x[i]-meanx)*(y[i]-meany);
cov=temp/n;
for(i=0;i<n;i++)
{
        sx+=pow((x[i]-meanx),2);
        sy+=pow((y[i]-meany),2);
}
sx=sqrt(sx/n);
sy=sqrt(sy/n);
r=(cov)/(sx*sy);
printf("meanx %f meany %f cov %f\n",meanx,meany,cov);
printf("corr coefficient %f\n",r);
printf("%f %f",pow(sx,2),pow(sy,2));
return 0;
}
