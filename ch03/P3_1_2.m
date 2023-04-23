
[x21, n21] = stepseq(0, 0, 22);
[x22, n22] = stepseq(21, 0, 22);
[x23, n23] = sigadd(x21, n21, -x22, n22);
n2 = n23;
x2 = n2 .* (0.9 .^ n2) .* x23;
w2 = [-100 : 100] / 100 * pi;
X2 = dtft(x2, n2, w2);
magX2 = abs(X2);
angX2 = angle(X2);

subplot(2, 1, 1); plot(w2/pi, magX2); title("Mag");
subplot(2, 1, 2); plot(w2/pi, angX2 * 180 / pi); title("Ang"); axis([-1, 1, -200, 200]);
