#include<stdio.h>
#include<math.h>

int main()
{
	int n, i, j;
	printf("Ënter n: ");
	scanf("%d", &n);
	float a[n][n], x[n], max, prev, y[n], c=1;
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			scanf("%f", &a[i][j]);
		}
	}
	printf("Enter vector x[i]\n");
	for(i=0;i<n;i++)
	{
		scanf("%f",&x[i]);
	}
	
	do
	{
		//prev = 1;
		prev = c;
		for(i=0;i<n;i++)
		{
			float temp = 0;
			for(j=0;j<n;j++)
			{
				temp += a[i][j]*x[j];
			}
		y[i] = temp;
		}
		max = y[0];
		for(i=1;i<n;i++)
		{
			if(y[i] > max)
			{
				max = y[i];
			}
		}
		
		c = max;
		for(i=0;i<n;i++)
		{
			x[i] = y[i] / max;
			//printf("%f\n", max);			
		}
		for(i=0;i<n;i++)
		{
			printf("Vector is: \n", x[i]);
		}
	}while(fabs(max - prev)>0.00001);
	printf("Eigen Value: %f", max);

	
	return 0;
}
