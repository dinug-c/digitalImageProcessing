function y=edge(x,kx,ky,T)
Dx=konvolusi(x,kx);
Dy=konvolusi(x,ky);
KT=abs(Dx)+abs(Dy);
y=thresholding(KT,T);


