% p3_11_5

w = [-300:300]*pi/300;
H = 0.5*0.75*ones(size(w)) ./ (1.25 - cos(w-(0.1*pi)))+0.5*0.75*ones(size(w)) ./ (1.25 - cos(w+(0.1*pi)))
magH = abs(H);
angH = angle(H);

subplot(2, 1, 1); plot(w, magH);
subplot(2, 1, 2); plot(w, angH/pi*180);
