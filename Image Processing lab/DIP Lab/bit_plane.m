clc;
A=imread('lena_gray_256.tif');
A=double(A);
[m,n]=size(A);
bits = zeros(m,n,8);
for pln=1:8
    for i=1:256
        for j=1:256            
            var = 2^(pln-1);
            cal = bitand(A(i,j),var);
            if(cal==var)
                bits(i,j,pln)=1;
            else
                bits(i,j,pln)=0;
            end
        end
    end
end

for a=1:8
    subplot(3,3,a),imshow(bits(:,:,a));
end
                