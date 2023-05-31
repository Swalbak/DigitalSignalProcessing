% 한밭대 20191780 육정훈

L = 5; N = 20; k = [-N/2:N/2]; % Sq wave parameters
xn = [ones(1,L), zeros(1,N-L)]; % Sq wave x(n)
Xk = dfs(xn,N); % DFS
magXk = abs([Xk(N/2+1:N) Xk(1:N/2+1)]); % DFS magnitude
subplot(2,2,1); stem(k,magXk); axis([-N/2,N/2,-0.5,5.5])
xlabel('k'); ylabel('Xtilde(k)')
title('DFS of SQ. wave: L=5, N=20')

N = 40; k = [-N/2:N/2];
xn = [ones(1,L), zeros(1,N-L)]; % Sq wave x(n)
Xk = dfs(xn,N); % DFS
magXk = abs([Xk(N/2+1:N) Xk(1:N/2+1)]); % DFS magnitude
subplot(2,2,2); stem(k,magXk); axis([-N/2,N/2,-0.5,5.5])
xlabel('k'); ylabel('Xtilde(k)')
title('DFS of SQ. wave: L=5, N=40')

N = 60; k = [-N/2:N/2];
xn = [ones(1,L), zeros(1,N-L)]; % Sq wave x(n)
Xk = dfs(xn,N); % DFS
magXk = abs([Xk(N/2+1:N) Xk(1:N/2+1)]); % DFS magnitude
subplot(2,2,3); stem(k,magXk); axis([-N/2,N/2,-0.5,5.5])
xlabel('k'); ylabel('Xtilde(k)')
title('DFS of SQ. wave: L=5, N=60')

L = 7;
N = 60; k = [-N/2:N/2];
xn = [ones(1,L), zeros(1,N-L)]; % Sq wave x(n)
Xk = dfs(xn,N); % DFS
magXk = abs([Xk(N/2+1:N) Xk(1:N/2+1)]); % DFS magnitude
subplot(2,2,4); stem(k,magXk); axis([-N/2,N/2,-0.5,8.5])
xlabel('k'); ylabel('Xtilde(k)')
title('DFS of SQ. wave: L=7, N=60')
