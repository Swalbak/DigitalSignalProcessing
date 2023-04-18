# prac2_20_1

n = 0:30;
a = [1];
b = [1, -1];
x = 5 * (stepseq(0, 0, 30) - stepseq(20, 0, 30));
y = filter(b, a, x);

stem(n, y); title("y"); xlabel("n"); ylabel("y"); axis([-30, 100]);
