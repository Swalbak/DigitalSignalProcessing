% prac2_11_4.m
% 한밭대 20191780 육정훈

n = 0:100;
x1 = rand(1, length(n));
x2 = sqrt(10) * randn(1, length(n));

y1 = cumsum(x1);
ny1 = n - 5;
y2 = cumsum(x2);
ny2 = n - 5;
xs = x1 + x2;
y = cumsum(xs);
ny = n - 5;

subplot(2, 1, 1); stem(ny, y); title("signal1"); xlabel("n"); ylabel("y");
subplot(2, 1, 2); stem(ny2, y1 + y2); title("signal2"); xlabel("n"); ylabel("y");
