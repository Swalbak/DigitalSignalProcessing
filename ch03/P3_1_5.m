x5 = [4, 3, 2, 1, -1, -2, -3, -4];
n5 = [0:7];
w5 = [-100 : 100]/100*pi;
X5 = dtft(x5, n5, w5);
magX5 = abs(X5);
angX5 = angle(X5);

subplot(2, 1, 1); plot(w5/pi, magX5); title("Mag");
subplot(2, 1, 2); plot(w5/pi, angX5); titile("Angle");
