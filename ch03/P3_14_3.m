% p3_14_3

k = 500;
w = linspace(-pi, pi, 2*k+1);
H = dtft(h, n, w);
magH = abs(H);
angH = angle(H);
H_d = zeros(1, length(w));
H_d(k/2+1: 3*k/2+1) = exp(-i*alpha*w(k/2+1: 3*k/2+1));
magH_d = abs(H_d);
angH_d = angle(H_d);

subplot(2, 2, 1); plot(w, magH);
subplot(2, 2, 2); plot(w, angH*180/pi);
subplot(2, 2, 3); plot(w, magH_d);
subplot(2, 2, 4); plot(w, angH_d*180/pi);
