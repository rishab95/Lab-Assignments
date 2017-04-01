clc;
A = imread('lena_gray_256.tif');
A=double(A);

[m,n] = size(A);
B=zeros(m,n);
for i=1:m
    for j=1:n
        B(n-i+1,j)=A(i,j);
    end
end

imwrite(B,'output.jpg');
imshow(uint8(B));