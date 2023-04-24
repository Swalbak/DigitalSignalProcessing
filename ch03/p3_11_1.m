% p3_11_1
% 한밭대학교 20191780 육정훈

w = [-300:300]*pi/300;
H = 0.19*ones(size(w))./(1.81-1.8*cos(w));
magH = abs(H);
angH = angle(H)*180/pi;

subplot(2, 1, 1); plot(w, magH);
subplot(2, 1, 2); plot(w, angH);
