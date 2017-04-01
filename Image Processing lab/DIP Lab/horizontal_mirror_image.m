%mirror image horizontally
clc;
A=imread('lena_gray_256.tif');
[m,n]=size(A);
B=zeros(m,n);
for i=1:m
    for j=1:n
        B(m-i+1,j)=A(i,j);
    end
end
imshow(uint8(B));