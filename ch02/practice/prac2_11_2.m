% prac2_11_2.m

n = 0:100;
x1 = rand(1, length(n));
x2 = sqrt(10) * randn(1, length(n));
u = stepseq(0, 0, 100);
[x1_s, x1_n] = sigshift(x1, n, -1);
[x2_s, x2_n] = sigshift(x2, n, -1);

z = n;
[x11,nx11] = sigshift(x1,n,-1);
[x111,nx111] = sigmult(z,n,x11,nx11, 1);
[y1,ny1] = sigadd(x1,n,x111,nx111, 1);

[x21,nx21] = sigshift(x2,n,-1);
[x211,nx211] = sigmult(z,n,x21,nx21, 1);
[y2,ny2] = sigadd(x2,n,x211,nx211, 1);

xs = x1 + x2;
[xs1,nxs1] = sigshift(xs,n,-1);
[xs11,nxs11] = sigmult(z,n,xs1,nxs1, 1);
[y,ny] = sigadd(xs,n,xs11,nxs11, 1);

subplot(2, 1, 1); stem(ny, y); title("signal1"); xlabel("n"); ylabel("y");
subplot(2, 1, 2); stem(ny2, y1 + y2); title("signal2"); xlabel("n"); ylabel("y");
