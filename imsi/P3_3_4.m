w4 = [0:500]/500*pi;
X4 = (4*exp(-i*2*w4)-2.56*exp(-i*3*w4)) ./ (1-1.6*exp(-i*w4)+0.64*exp(-i*2*w4))
magX4 = abs(X4);
angX4 = angle(X4);

subplot(2, 1, 1); plot(w4/pi, magX4);
subplot(2, 1, 2); plot(w4/pi, angX4*180/pi);
