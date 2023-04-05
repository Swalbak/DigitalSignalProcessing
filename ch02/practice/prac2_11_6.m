% prac2_11_6.m

n = 0:100;
x1 = rand(1, length(n));
x2 = sqrt(10) * randn(1, length(n));

y1 = round(x1);
y2 = round(x2);
xs = x1 + x2;
y = round(xs);

subplot(2, 1, 1); stem(n, y); title("signal1"); xlabel("n"); ylabel("y");
subplot(2, 1, 2); stem(n, y1 + y2); title("signal2"); xlabel("n"); ylabel("y");
