% P4_2
% 한밭대학교 20191780 육정훈

b = [1 0 -0.9*cos(pi/4)];
a = [1 0 2*-0.9*cos(pi/4) 0 0.81];
[delta,n1] = impseq(0,0,13);

xb1 = filter(b,a,delta);

[u,n2] = stepseq(0,0,6);
x1 = (((0.9).^n2).*cos(pi*n2/4)).*u;
xb2 = zeros(1,2*length(x1));
xb2(1:2:end) = x1;

error = max(abs(xb1-xb2))
