function y=konvolusi(x,k)
x=double(x);
[M N]=size(x);
for i=2:M-1,
    for j=2:N-1,
        y(i,j)=k(1,1)*x(i-1,j-1)+k(1,2)*x(i-1,j)+k(1,3)*x(i-1,j+1)+...
               k(2,1)*x(i,j-1)+k(2,2)*x(i,j)+k(2,3)*x(i,j+1)+...
               k(3,1)*x(i+1,j-1)+k(3,2)*x(i+1,j)+k(3,3)*x(i+1,j+1);
    end;
end;
y=uint8(y);

