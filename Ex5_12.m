% Ex5_12
% 한밭대 20191780 육정훈

n = 0:10; x = 10*(0.8) .^ n; y = cirshift(x,6,15);
n = 0:14; x = [x, zeros(1,4)];
subplot(2,1,1); stem(n,x); title('Original sequence')
xlabel('n'); ylabel('x(n)');
subplot(2,1,2); stem(n,y);
title('Circularly shifted sequence, N=15')
xlabel('n'); ylabel('x((n-6) mod 15)');

