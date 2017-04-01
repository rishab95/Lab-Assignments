clc();
lmax = 255;
a = imread('dollar.tif')
[M, N] = size(a)
for i=1:M
    for j=1:N
        a1(i,j) = lmax - a(i,j);
    end
end;
imwrite(a1,'dnew.jpg');
imshow(a1);