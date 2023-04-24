%p3_11_3
% 한밭대학교 20191780 육정훈

[h1, n1] = stepseq(0, 0, 40);
[h2, n2] = stepseq(40, 0, 40);
[h3, n3] = sigadd(h1, n1, -h2, n2);
n = n3;
h = sinc(0.2*n).*h3;
w = [-300:300]*pi/300;
H = dtft(h, n, w);
magH = abs(H);
angH = angle(H);

subplot(2, 1, 1); plot(w, magH);
subplot(2, 1, 2); plot(w, angH/pi*180);
