% p3_1

[x11, n11] = stepseq(-10, -11, 11);
[x12, n12] = stepseq(11, -11, 11);
[x13, n13] = sigadd(x11, n11, -x12, n12);
n1 = n13;
x1 = (0.6 .^ abs(n1)).*x13;
w1 = [-100 : 100]/100 * pi;
X1 = dtft(x1, n1, w1);
magX1 = abs(X1);
angX1 = angle(X1);

subplot(2, 1, 1); plot(w1/pi, magX1); title("Mag");
subplot(2, 1, 2); plot(w1/pi, angX1 * 180/pi); axis([-1, 1, -180, 180]); title("angle");
