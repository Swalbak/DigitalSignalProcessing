[x31, n31] = stepseq(0, 0, 52);
[x32, n32] = stepseq(51, 0, 52);
[x33, n33] = sigadd(x31, n31, -x32, n32);
n3 = n33;
x3 = (cos(0.5 * pi * n3) + i * sin(0.5 * pi * n3)) .* x33;
w3 = [-100 : 100] / 100 * pi;
X3 = dtft(x3, n3, w3);
magX3 = abs(X3);
angX3 = angle(X3);

subplot(2, 1, 1); plot(w2/pi, magX3); title("Mag");
subplot(2, 1, 2); plot(w2/pi, angX3 * 180 / pi); title("Ang"); axis([-1, 1, -200, 200]);
