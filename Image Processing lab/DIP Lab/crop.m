clc;
A = imread('lena_gray_256.tif');
x1 = input('Enter x1');
x2 = input('Enter x2');
y1 = input('Enter y1');
y2 = input('Enter y2');


[m,n] = size(A);
B=zeros(m,n);
for i=1:m
    for j=1:n
        if(i>x1 && i<x2 && j>y1 && j<y2)
            B(i,j)=A(i,j);
        end
    end
end

imwrite(B,'output.jpg');
imshow(uint8(B));