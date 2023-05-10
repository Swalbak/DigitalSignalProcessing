% Ex3_13
% 한밭대학교 20191780 육정훈

w = [0:1:500]*pi/500;
H = exp(i*w) ./ (exp(i*w) - 0.9*ones(1, 501));
mag = abs(H);
ang = angle(H);
subplot(2, 1, 1); plot(w, mag);
subplot(2, 1, 2); plot(w, ang);
