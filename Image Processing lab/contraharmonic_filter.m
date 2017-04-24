clc;
%A= [1 2 3 4;5 6 7 8; 9 10 11 12;13 14 15 16];
A = imread('Fig0340(a)(dipxe_text).tif');
A=double(A);
[m,n]=size(A);
B = zeros(m,n);
x = input('Enter mask rows: ');
y = input('Enter mask col: ');
Q = input('Énter Q: ');

xlb = floor((x-1)/2);
xub = x - xlb - 1;
ylb = floor((y-1/2));
yub = y-ylb-1;
xc = (x+1)/2;
yc = (y+1)/2;


for i=1:m
    for j=1:n
        tmp1 = 0;
        tmp2 = 0;
        for s=-1*xlb:xub
            for r=-1*ylb:yub
                if(i+s>0 && i+s <= m && j+r<=n && j+r>0)
                   tmp1 = tmp1 + A(i+s,j+r)^Q;
                   tmp2 = tmp2 + A(i+s,j+r)^(Q+1);
                end
            end
        end
        t1 = tmp1/9;
        t2 = tmp2/9;
        t3 = t2/t1;
        B(i,j) = t3;
    end
end

imshow(uint8(B));
