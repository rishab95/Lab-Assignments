clc;
A=imread('lena_gray_256.tif');
A=double(A);
[m,n]=size(A);
B=zeros(m,n);
rx=max(max(A));
rn=min(min(A));
rd=rx-rn;
smax=input('Enter max: ');
smin=input('Enter min: ');
rsf=(smax-smin)/rd;
for i=1:m
    for j=1:n
        B(i,j)=smin+rsf*(A(i,j)-rn);
    end
end

B=mat2gray(B);
imshow(B);