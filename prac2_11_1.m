% prac2_11_1.m

n = 0:100;
x1 = rand(1, length(n));
x2 = sqrt(10) * randn(1, length(n));
u = stepseq(0, 0, 100);
y1 = x1 .* u;
y2 = x2 .* u;

a1 = 3; a2 = 2;
res1 = a1 * y1 + a2 * y2;
