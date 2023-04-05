% prac2_12_1.m

n = 0:100;
x = sqrt(10)*randn(1,length(n));
u = stepseq(0,0,100);
y = x.*u;
[y1,ny1] = sigshift(y,n,10);
[x1,nx1] = sigshift(x,n,10);
[y2,ny2] = sigmult(x1,nx1,u,n);
[diff,ndiff] = sigadd(y1,ny1,-y2,ny2);

subplot(2, 1, 1); stem(ny2, y2); title("signal1"); xlabel("n"); ylabel("y");
subplot(2, 1, 2); stem(ny1, y1); title("signal2"); xlabel("n"); ylabel("y");
