k = 1:4;
sample_num = 10000;

x = zeros(1, sample_num);

for i = k
  x = x + rand(1, sample_num) - 0.5;
end

bin = 100;
[counts, bin_centers] = hist(x, bin);

% histogram
figure(1);
bar(bin_centers, counts);
xlabel('Value');
ylabel('Count');
title('Histogram');
