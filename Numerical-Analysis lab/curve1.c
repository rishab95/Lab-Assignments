#include <stdio.h>
#include <math.h>

int main()
{
	int n, i, j;
	printf("Enter Points No: ");
	scanf("%d", &n);
	float y[n], x[n], a, b;
	printf("Enter Y n X Elements\n");
	for(i=0;i<n;i++)
	{
		scanf("%f %f",&x[i],&y[i]);
	}
	for(i=0;i<n;i++)
	{
		x[i] = x[i] - 5.3;
		//y[i] = log(y[i]);
	}
	float sumx = 0, sumy = 0, sumxy = 0, sumxx = 0;
	for(i=0;i<n;i++)
	{
		sumx = sumx + x[i];
		sumy = sumy + y[i];
		sumxx = sumxx + (x[i]*x[i]);
		sumxy = sumxy + (x[i]*y[i]);
	}
	//a = (sumx*sumy - n*sumxy)/(sumx*sumx - n*sumxx);
	//b = (sumx*sumxy - sumxx*sumy)/(sumx*sumx - n*sumxx);
	a = sumxy / sumxx;
	printf("Values of A n B :   ");
	printf("%f\n", a);
	//printf("%f\n", b);
	//printf("b is %f\n", a);
	//printf("a is %f\n", exp(b));
return 0;
}
