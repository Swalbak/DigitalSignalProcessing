% Ex5_9
% 한밭대 20191780 육정훈

n = 0:10; x = 10*(0.8) .^ n; y = x(mod(-n,11)+1);
subplot(2,1,1); stem(n,x); title('Original sequence')
xlabel('n'); ylabel('x(n)');
subplot(2,1,2); stem(n,y); title('Circularly folded sequence')
xlabel('n'); ylabel('x(-n mod 10)');

