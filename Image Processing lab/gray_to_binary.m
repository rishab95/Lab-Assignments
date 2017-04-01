clc();
A = imread('lena512.bmp');
[m,n]=size(A);
for i=1:m
    for j=1:n
        if( A(i,j) > 128)
            A(i,j) = 255;
        else
            A(i,j) = 0;
        end
    end
end

imshow(A);