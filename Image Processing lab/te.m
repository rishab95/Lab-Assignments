clear all;
A=zeros(5,5);
x=1;
m=5;
n=5;
for i=1:5
    for j=1:5
        A(i,j)=x;
        x=x+1;
    end
end

[m,n]=size(A);
R = zeros(m,n);
I = zeros(m,n);

for u=0:m-1
    for v=0:n-1
        rel =0;
        img = 0;
        for x=0:m-1
            for y=0:n-1
                th = 2*pi*((u*x/m) + (v*y/n));
                rel = rel + A(x+1,y+1)*cos(th);
                img = img + A(x+1,y+1)*sin(th);
            end    
        end
        R(u+1,v+1) = rel;
        I(u+1,v+1) = -img;
    end
end
%subplot(1,2,1),imshow(uint8(R));
%subplot(1,2,2),imshow(uint8(I));     


subplot(1,2,1),disp((R));
subplot(1,2,2),disp((I));     
p = fft2(A);

disp(p);
