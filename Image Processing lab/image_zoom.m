clc();
A=imread('lena_gray_256.tif');
A=double(A);
[m,n]=size(A);
S=3;
M=m*S;
N=n*S;
B=zeros(M,N);
for i=0:M-1
    for j=0:N-1
        x=floor(i/S)+1;
        y=floor(j/S)+1;
        B(i+1,j+1) = A(x,y);
    end
end

imwrite(B,'lena_768.jpg');
B=uint8(B);
imshow(B);