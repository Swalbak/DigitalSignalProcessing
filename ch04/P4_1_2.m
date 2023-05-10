% P4_1_2
% 한밭대학교 20191780 육정훈

b = [0 0 0.64];
a = [1 -0.8];
[delta,n] = impseq(0,0,10);

xb1 = filter(b,a,delta);

[u,n] = stepseq(2,0,10);
xb2 = ((0.8).^n).*u;

error = max(abs(xb1-xb2))
