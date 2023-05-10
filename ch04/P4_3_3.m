% P4_3_3
% 한밭대학교 20191780 육정훈

b = [0 sin(pi/3) (0.81-0.9*sin(pi/3)) -(1.62+sin(pi/3)) ...
(0.9*sin(pi/3)+2.43) -1.62 0.81];
a = [1 -2.9 4.8 -4.7 2.8 -0.9];
[delta,n1] = impseq(0,0,9);

xb1 = filter(b,a,delta);

[u2,n2] = stepseq(0,0,9); [u3,n3] = stepseq(2,0,9);
xb2 = (n2.*sin(pi/3*n2)).*u2+((0.9).^n3).*u3;

error = max(abs(xb1-xb2))

