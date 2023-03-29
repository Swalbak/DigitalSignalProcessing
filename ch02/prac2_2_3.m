sample_num = 100000;
n = 0:99999;
x1 = 2 * rand(1, sample_num);
[x2, n2] = sigshift(x1, n, 1);
[x3, n3] = sigadd(x1, n, x2, n2, 1);

bin = 100;
[counts, bin_centers] = hist(x3, bin);

% histogram
figure(1);
bar(bin_centers, counts);
xlabel('Value');
ylabel('Count');
title('Histogram');

