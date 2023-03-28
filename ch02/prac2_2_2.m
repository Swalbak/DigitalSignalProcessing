mu = 10;
sigma = sqrt(10);
num_samples = 10000;

x1 = mu + sigma * randn(1, num_samples);

bin = 100;
[counts, bin_centers] = hist(x1, bin);

bar(bin_centers, counts);
xlabel('Value');
ylabel('Count');
title('Sampling from Gaussian Distribution');

