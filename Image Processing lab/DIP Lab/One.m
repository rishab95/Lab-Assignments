z = [1 0 5 2
     3 2 7 8
     2 0 1 4
     7 4 9 5];
 for(i=1:1:4)
     for(j=2:2:4)
         z(i,j)=z(i,j)+4;
     end
 end
 b=zeros(8,8);
 x=1;
 y=1;
 for(i=1:1:4)
     y=1;
     for(j=1:1:4)
     b(x,y)=z(i,j);
     y=y+2;
     end
 x=x+2;
 end


 