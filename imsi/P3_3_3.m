w3 = [0:500]/500*pi;
X3 = (-4.1 * exp(i * 3 * w3) + 4.9 * exp(i * 2 * w3)) ./ (1 - 1.8 * exp(-i * w3) + 0.81 * exp(-i*2*w3));
magX3 = abs(X3);
angX3 = angle(X3);

subplot(2, 1, 1); plot(w3/pi, magX3);
subplot(2, 1, 2); plot(w3/pi, angX3*180/pi);
