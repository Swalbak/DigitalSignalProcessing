w2 = [0:500]/500 * pi;
X2 = (0.64 - 2 * (0.6)^11 * cos(11 * w2) + 2*(0.6)^12*cos(10*w2)) ./ (1.36 - 1.2*cos(w2));
magX2 = abs(X2);
angX2 = angle(X2);

subplot(2, 1, 1); plot(w2/pi, magX2);
subplot(2, 1, 2); plot(w2/pi, angX2*180/pi);
