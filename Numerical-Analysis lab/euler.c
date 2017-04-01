#include<stdio.h>
#include<math.h>
float f(float x, float y)
{
	return ((-y) + 2*cos(x));
}
int main()
{
	float a = 0, b = 1,  h = 0.2;
	//printf("Ener a, b , h \n");
	//scanf("%f %f %f", &a, &b, &h);
	int n = 5, i, j;
	float x0 = 0, y0 = 1, y1, y2, x;
	//printf("Enter x0 , y0\n");
	//scanf("%f %f", &x0, &y0);
	for(i=1;i<=n;i++)
	{
		y1 = y0 + f(x0, y0);
		do
		{
			x = y1;
			
			y2 = y0 + (h/2)*(f(x0 + h, x) + f(x0, y0));
			y1 = y2;
		
		}while(fabs(x - y2) > 0.0001);
		x0 = x0 + h;
		y0 = y2;
		printf("Y2 n X is %f %f \n", y2, x0);
	
	}
	return 0;
}
