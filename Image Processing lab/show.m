a=imread('lena512.bmp');
[m,n]=size(a);
m=m+2;

for i=1:m
    a(1,i)=0;
    a(2,i)=0;
    
    a(i,m)=0;
    a(i,m-1)=0;
    
    a(i,1)=0;
    a(i,2)=0;
    
    a(m,i)=0;
    a(m-1,i)=0;
end;
imshow(a);