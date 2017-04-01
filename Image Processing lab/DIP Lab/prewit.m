clc;
A=imread('livingroom.tif');
A=double(A);
[m,n]=size(A);
Bx = zeros(m,n);
By = zeros(m,n);
B = zeros(m,n);
% x = input('Enter mask rows: ');
% y = input('Enter mask col: ');
% sig = input('Énter sigma: ');
% 
% W = zeros(x,y);
Wx = [-1 -2 -1;0 0 0;1 2 1];
Wy = [-1 0 1;-2 0 2;-1 0 1];

x = 3;
y = 3;
xlb = floor((x-1)/2);
xub = x - xlb - 1;
ylb = floor((y-1/2));
yub = y-ylb-1;
% xc = (x+1)/2;
% yc = (y+1)/2;
dew = 0;
for i=1:x
    for j=1:y
        dew = dew + W(i,j);
    end
 end



for i=1:m
    for j=1:n
        tmp1=0;
        tmp2=0;
        for s=-1*xlb:xub
            for r=-1*ylb:yub
                if(i+s>0 && i+s <= m && j+r<=n && j+r>0)
                   tmp1 = tmp1 + Wx(s+xlb+1,r+ylb+1)*A(i+s,j+r);
                   tmp2 = tmp2 + Wy(s+xlb+1,r+ylb+1)*A(i+s,j+r);
                end
            end
        end
        Bx(i,j) = tmp1;
        By(i,j) = tmp2;
        B(i,j) = sqrt(Bx(i,j)^2 + By(i,j)^2);
    end
end

B = 255 - B;

%diff = (A) - (B);
%subplot(4,1,1),imshow(uint8(A));
subplot(1,1,1),imshow(uint8(B));
%subplot(1,2,1),imshow(uint8(Bx));
%subplot(1,2,2),imshow(uint8(By));