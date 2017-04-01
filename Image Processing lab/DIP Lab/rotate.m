clc;
A = imread('lena_gray_256.tif');
A=double(A);

[m,n] = size(A);
B=zeros(m,n);
for i=1:m
    for j=n:-1:1
        B(n-j+1,i)=A(i,j);
    end
end

imwrite(B,'output.jpg');
imshow(uint8(B));