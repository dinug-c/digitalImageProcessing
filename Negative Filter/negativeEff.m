function neg=negativeEff(gb)
gb=double(gb);
[m, n]=size(gb);
for i=1:m,
    for j=1:n,
        neg(i,j)=255-gb(i,j);
    end;
end;
neg=uint8(neg);