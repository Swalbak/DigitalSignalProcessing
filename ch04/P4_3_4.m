% P4_3_4
% 한밭대학교 20191780 육정훈

b = 3/2*[0 1 0 -4/9]; a = [1 -8/3 8/3 -32/27 16/81];
[delta,n1] = impseq(0,0,8); xb1 = filter(b,a,delta);
[u,n2] = stepseq(1,0,8); xb2 = ((n2.^2).*((2/3).^(n2-2))).*u;
error = max(abs(xb1-xb2))

