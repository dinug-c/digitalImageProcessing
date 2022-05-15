function y=max8(K1,K2,K3,K4,K5,K6,K7,K8)
m1=max(K1,K2);
m2=max(K3,K4);
m3=max(K5,K6);
m4=max(K7,K8);
mm1=max(m1,m2);
mm2=max(m3,m4);
KT=max(mm1,mm2);
y=uint8(KT);

