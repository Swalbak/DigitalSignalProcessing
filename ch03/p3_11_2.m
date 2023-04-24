% p3_11_2

w = [-300:300]/300*pi;

[h1, n1] = stepseq(-20, -20, 20);
[h2, n2] = stepseq(20, -20, 20);
[h3, n3] = sigadd(h1, n1, -h2, n2);
n = n3;
h = sinc(0.2*n).*h3;

H = dtft(h, n, w);
magH = abs(H);
angH = angle(H);

subplot(2, 1, 1); plot(w, magH);
subplot(2, 1, 2); plot(w, angH*180/pi); axis([-1, 1, -200, 200]);

