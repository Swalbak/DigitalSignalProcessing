% prac2_12_2.m
% 한밭대 20191780 육정훈

n = 0:100;
x = sqrt(10)*randn(1,length(n));

z = n; [x1,nx1] = sigshift(x,n,-1);
[x11,nx11] = sigmult(z,n,x1,nx1); [y,ny] = sigadd(x,n,x11,nx11);
[y1,ny1] = sigshift(y,ny ,1); [xs,nxs] = sigshift(x,n,1);
[xs1,nxs1] = sigshift(xs,nxs,-1); [xs11,nxs11] = sigmult(z,n,xs1,nxs1);
[y2,ny2] = sigadd(xs,nxs,xs11,nxs11); [diff,ndiff] = sigadd(y1,ny1,-y2,ny2);

subplot(2, 1, 1); stem(ndiff, diff); title("signal1"); xlabel("n"); ylabel("y");
