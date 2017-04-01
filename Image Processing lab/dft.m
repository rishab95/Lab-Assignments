%clc;
A=imread('lena100.bmp');
A=double(A);
[m,n]=size(A);
R = zeros(m,n);
I = zeros(m,n);

for u=1:m
    for v=1:n
        rel =0;
        img = 0;
        for x=1:m
            for y=1:n
                th = 2*pi*(u*x/m + v*y/n);
                rel = rel + A(x,y)*cos(th);
                img = img + A(x,y)*sin(th);
            end    
        end
        R(u,v) = rel;
        I(u,v) = img;
    end
end
%subplot(1,2,1),imshow(uint8(R));
%subplot(1,2,2),imshow(uint8(I));     


subplot(1,2,1),disp((R));
subplot(1,2,2),disp((I));     
p = fft(A);

disp();

        