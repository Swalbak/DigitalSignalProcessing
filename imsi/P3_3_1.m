w1 = [0:500]/500*pi;
X1 = 8 * exp(i * 2 * w1) ./ (1 - 0.5 * exp(-j * w1));
magX1 = abs(X1);
angX1 = angle(X1);

subplot(2, 1, 1); plot(w1/pi, magX1); title("Mag");
subplot(2, 1, 2); plot(w1/pi, angX1 * 180 / pi); title("Ang");
