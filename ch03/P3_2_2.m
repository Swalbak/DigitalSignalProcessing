n1 = [0:3];
x1 = [1, 2, 2, 1];
n2 = [0:7];
x2 = [x1, x1];
w2 = [-100: 100] / 100 * pi;
X1 = dtft(x1, n1, w2);
X2 = dtft(x2, n2, w2);
magX1 = abs(X1);
angX1 = angle(X1);
magX2 = abs(X2);
angX2 = angle(X2);

subplot(2, 2, 1); plot(w2/pi, magX1);
subplot(2, 2, 2); plot(w2/pi, angX1*180/pi);
subplot(2, 2, 3); plot(w2/pi, magX2);
subplot(2, 2, 4); plot(w2/pi, angX2*180/pi);