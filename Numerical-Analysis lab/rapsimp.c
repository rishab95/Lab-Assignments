#include<stdio.h>
#include<math.h>
float f(float x)
{
	return (1/(x*log(x)));
}
int main()
{
	int n, i, j;
	printf("Enter Subintervals: ");
	scanf("%d", &n);
	float a = exp(1), b = a + 1, h, sum, trp;  //trapezoidal
	printf("Enter a, ,b\n");
	//scanf("%f %f", &a, &b);
	h = (b-a)/n;
	for(i=1;i<n;i++)
	{
		sum = sum + f(a + i*h);
		
	}
	trp = (h/2)*(f(a) + f(b) + sum*2);
	
	float odd=0, even = 0;
	for(i=1;i<n;i++)
	{
		if(i%2==0)
		{
			even = even + f(a + i*h);
		}
		else
		{
			odd = odd + f(a + i*h);
		}
	}
	float smp;
	smp = (h/3)*(f(a) + f(b) + 2*even + 4*odd);
	printf("Trapezoidal is %f \n", trp);
	printf("Simpson is %f \n", smp);
	return 0;
}
