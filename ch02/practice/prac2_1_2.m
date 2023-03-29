% 한밭대학교 20191780 육정훈

n = -10:10;
k = -5:5;
x = zeros(size(n));

for i=k
  x = x + exp(-abs(i)) .* impseq(2*i, -10, 10);
end

stem(n, x); title('Prac 2.1.2'); xlabel('n'); ylabel('x(n)');

