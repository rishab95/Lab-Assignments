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
B = dct2(A);
R = zeros(m,n);
%% IDCT
au = 1/sqrt(m);
av = 1/sqrt(n);
rt2 = sqrt(2);
for x=0:m-1
    for y=0:n-1
        temp = 0;        
        for u=0:m-1
            for v=0:n-1
                thetax = (2*x+1)*pi*u/(2*m);
                thetay = (2*y+1)*pi*v/(2*n);
                cal = cos(thetax)*cos(thetay);
                cal = cal*au*av;
                if(u~=0)
                    cal = cal*rt2;
                end
                if(v~=0)
                    cal = cal*rt2;
                end
                cal=cal*B(u+1,v+1);
                temp = temp + cal;
            end                
        end        
        R(x+1,y+1) = temp;        
    end
end

disp(R);
q = idct2(B);
disp(q);