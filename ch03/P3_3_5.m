w5 = [0:500]/500*pi;
X5 = (4 + 2 * exp(-i*w5)) ./ (1 + 1.4*exp(-i*w5)+0.49*exp(-i*2*w5));
magX5 = abs(X5);
angX5 = angle(X5);

subplot(2, 1, 1); plot(w5/pi, magX5);
subplot(2, 1, 2); plot(w5/pi, angX5*180/pi);
