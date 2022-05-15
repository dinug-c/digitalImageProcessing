function y=thresholding(x,T)
x=double(x);
[M N]=size(x);
for i=1:M,
    for j=1:N,
        if x(i,j)<T
            y(i,j)=0;
        else
            y(i,j)=255;
        end
    end
end
y=uint8(y);

