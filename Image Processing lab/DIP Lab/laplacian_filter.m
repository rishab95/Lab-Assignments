clc;
A=imread('Fig0338(a)(blurry_moon).tif');
A=double(A);
[m,n]=size(A);
B = zeros(m,n);

W = [1 1 1;1 -8 1; 1 1 1];
x = 3;
y = 3;
xlb = floor((x-1)/2);
xub = x - xlb - 1;
ylb = floor((y-1/2));
yub = y-ylb-1;

dew = 0;
for i=1:x
    for j=1:y
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
        B(i,j) = tmp;        
    end
end
diff = (A) - (B);
subplot(3,1,1),imshow(uint8(A));
subplot(3,1,2),imshow(uint8(diff));
subplot(3,1,3),imshow(uint8(B));