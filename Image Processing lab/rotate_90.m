clc;
A = imread('woman_blonde.tif');
[m,n]=size(A);
B=zeros(n,m);
A=double(A);
for i=1:m
    for j=n:-1:1
        B(n-j+1,i)=A(i,j);
    end
end
imshow(uint8(B));