clc;
A=zeros(5,5);
z=1;
m=5;
n=5;
for i=1:5
    for j=1:5
        A(i,j)=z;
        z=z+1;
    end
end
%[m,n]=size(A);
D = zeros(m,n);
for u=0:m-1
    for v=0:n-1
        rel = 0;
        %a = 0;
        %b = 0;
        for x=0:m-1
            for y=0:n-1
                thx = ((2*(x)+1)*pi*(u))/(2*m);
                thy = ((2*(y)+1)*pi*(v))/(2*n);
                rel = rel + A(x+1,y+1)*cos(thx)*cos(thy);
            end                
        end
        if (u == 0)
            a = sqrt(1/m);
        else
            a = sqrt(2/m);
        end
        if (v == 0)
            b = sqrt(1/n);
        else
            b = sqrt(2/n);
        end            
        D(u+1,v+1) = a*b*rel;        
    end
end

disp((D));
s = dct2(A);
disp(s);