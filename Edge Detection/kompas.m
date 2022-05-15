function y=kompas(x,Tr,Tg,S,BD,B,BL,U,TL,T)
K1=konvolusi(x,Tr);
K2=konvolusi(x,Tg);
K3=konvolusi(x,S);
K4=konvolusi(x,BD);
K5=konvolusi(x,B);
K6=konvolusi(x,BL);
K7=konvolusi(x,U);
K8=konvolusi(x,TL);
KT=max8(K1,K2,K3,K4,K5,K6,K7,K8);
y=thresholding(KT,T);


