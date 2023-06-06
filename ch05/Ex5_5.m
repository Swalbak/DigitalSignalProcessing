% Ex5_5
% 한밭대 20191780 육정훈

N = 5; k = 0:1:N-1;
wk = 2*pi*k/N; zk = exp(j*wk);
Xk = (zk)./(zk-0.7);
xn = real(idfs(Xk,N));
xtilde = xn'* ones(1,8); xtilde = (xtilde(:))';
subplot(2,2,1); stem(0:39,xtilde);axis([0,40,-0.1,1.5]);
xlabel('n'); ylabel('xtilde(n)'); title('N=5');

N = 10; k = 0:1:N-1;
wk = 2*pi*k/N; zk = exp(j*wk);
Xk = (zk)./(zk-0.7);
xn = real(idfs(Xk,N));
xtilde = xn'* ones(1,8); xtilde = (xtilde(:))';
subplot(2,2,2); stem(0:length(xtilde)-1,xtilde);axis([0,40,-0.1,1.5]);
xlabel('n'); ylabel('xtilde(n)'); title('N=10');

N = 20; k = 0:1:N-1;
wk = 2*pi*k/N; zk = exp(j*wk);
Xk = (zk)./(zk-0.7);
xn = real(idfs(Xk,N));
xtilde = xn'* ones(1,8); xtilde = (xtilde(:))';
subplot(2,2,3); stem(0:length(xtilde)-1,xtilde);axis([0,40,-0.1,1.5]);
xlabel('n'); ylabel('xtilde(n)'); title('N=20');

N = 40; k = 0:1:N-1;
wk = 2*pi*k/N; zk = exp(j*wk);
Xk = (zk)./(zk-0.7);
xn = real(idfs(Xk,N));
xtilde = xn'* ones(1,8); xtilde = (xtilde(:))';
subplot(2,2,4); stem(0:length(xtilde)-1,xtilde);axis([0,40,-0.1,1.5]);
xlabel('n'); ylabel('xtilde(n)'); title('N=40');
