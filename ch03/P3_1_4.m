
x4 = [4, 3, 2, 1, 1, 2, 3, 4];
n4 = [0:7];
w4 = [-100:100]/100*pi;
X4 = dtft(x4, n4, w4);
magX4 = abs(X4);
angX4 = angle(X4);

subplot(2, 1, 1); plot(w4/pi, magX4); axis([-1, 1, 0, 25]); title("Mag");
subplot(2, 1, 2); plot(w4/pi, angX4*180/pi); axis([-1, 1, -200, 200]); title("Angle");
