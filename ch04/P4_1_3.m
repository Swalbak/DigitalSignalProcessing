% P4_1_3
% 한밭대학교 20191780 육정훈

b = [ 2 0.3];
a = [1 0.3 -0.4];
[delta,n] = impseq(0,0,7);

xb1 = filter(b,a,delta);

[u,n] = stepseq(0,0,7);
xb2 = (((0.5).^n).*u)+(((-0.8).^n).*u);

error = max(abs(xb1-xb2))

