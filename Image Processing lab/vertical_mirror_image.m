%mirror image vertically
clc;
A=imread('lena_gray_256.tif');
[m,n]=size(A);
B=zeros(m,n);
for i=1:m
    for j=1:n
        B(i,n-j+1)=A(i,j);
    end
end
imshow(uint8(B));