clc;
A=imread('Fig0305(a)(DFT_no_log).tif');
A=double(A);
[m,n]=size(A);
B=zeros(m,n);
for i=1:m
    for j=1:n
       B(i,j)=log10(1+A(i,j));      
    end
end

B=mat2gray(B);
imshow(B);