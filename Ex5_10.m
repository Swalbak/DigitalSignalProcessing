% Ex5_10
% 한밭대 20191780 육정훈

n = 0:10; x = 10*(0.8) .^ n;
[xec,xoc] = circevod(x);
subplot(2,1,1); stem(n,xec); title('Circular-even component')
xlabel('n'); ylabel('xec(n)'); axis([-0.5,10.5,-1,11])
subplot(2,1,2); stem(n,xoc); title('Circular-odd component')
xlabel('n'); ylabel('xoc(n)'); axis([-0.5,10.5,-4,4])

