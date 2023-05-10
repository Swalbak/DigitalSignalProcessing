% Ex3_18
% 한밭대학교 20191780 육정훈

Dt = 0.00005;
t = -0.005:Dt:0.005;
xa = exp(-1000*abs(t));

Wmax = 2 * pi * 2000;
K = 500;
k = 0:1:K;
W = k*Wmax/K;
Xa = xa * exp(-i * t' * W) * Dt;
Xa = real(Xa);
W = [-fliplr(W), W(2:501)];
Xa = [fliplr(Xa), Xa(2:501)];

subplot(2, 1, 1); plot(t * 1000, xa);
subplot(2, 1, 2); plot(W/(2*pi*1000), Xa*1000);
