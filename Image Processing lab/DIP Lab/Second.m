a=imread('lena.bmp');
b=double(a);
subplot(1,3,1),imshow(a);
subplot(1,3,2),imshow(b);
c=mat2gray(b);
subplot(1,3,3),imshow(c);
imwrite(l,'he.png');
