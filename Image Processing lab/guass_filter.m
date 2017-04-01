clc;
A=imread('Fig0333(a)(test_pattern_blurring_orig).tif');
A=double(A);
[m,n]=size(A);
B = zeros(m,n);
x = input('Enter mask rows: ');
y = input('Enter mask col: ');
sig = input('Énter sigma: ');

W = zeros(x,y);
xlb = floor((x-1)/2);
xub = x - xlb - 1;
ylb = floor((y-1/2));
yub = y-ylb-1;
xc = (x+1)/2;
yc = (y+1)/2;
dew = 0;
for i=1:x
    for j=1:y
        a = (i - xc);
        b = (j - yc);        
        n1 = a*a + b*b;
        d1 = 2*sig*sig;
        nd = -1*(n1/d1);
        W(i,j) = exp(nd);
        dew = dew + W(i,j);
    end
end



for i=1:m
    for j=1:n
        tmp=0;
        for s=-1*xlb:xub
            for r=-1*ylb:yub
                if(i+s>0 && i+s <= m && j+r<=n && j+r>0)
                   tmp = tmp + W(s+xlb+1,r+ylb+1)*A(i+s,j+r);
                end
            end
        end
        B(i,j) = tmp/dew;        
    end
end

imshow(uint8(B));