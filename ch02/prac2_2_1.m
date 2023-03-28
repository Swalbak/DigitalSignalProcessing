num_samples = 100000;
x1 = 2 * rand(1, num_samples);

bin = 100;
[counts, bin_centers] = hist(x1, bin);

bar(bin_centers, counts);
xlabel('Value');
ylabel('Count');
title('Histogram of Uniformly Distributed Samples');

