clc;
A=imread('lena_gray_256.tif');
A=double(A);
[m,n]=size(A);
g=input('Enter gamma value: ');
B=zeros(m,n);

for i=1:m
    for j=1:n
        B(i,j)=power(A(i,j),g);
    end
end

B=mat2gray(B);
imshow(B);