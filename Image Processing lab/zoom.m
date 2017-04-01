clc();
a=imread('lena100.bmp');
subplot(1,2,1);imshow(a);



[m,n]=size(a);
p=m*2;
q=n*2;

temp=zeroes(p,q);

for r=1:m
for j=1:m
    for i=1:p
        q=0;
        while(q<2)
        temp(r,i) = a(r,j);
        q=q+1;  
        i=i+1;
        end;
    
        j=j+1;
        
        if(r>m)
            break;
        end
    end
end
end;


subplot(1,2,2);
imshow(temp);