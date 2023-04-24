% p3_11_4

w = [-300:300]*pi/300;
H = (2 - 0.9*exp(-i*w))./(1 - 0.9*exp(-i*w) + 0.2*exp(-i*2*w));
magH = abs(H);
angH = angle(H);

subplot(2, 1, 1); plot(w, magH);
subplot(2, 1, 2); plot(w, angH/pi*180);
