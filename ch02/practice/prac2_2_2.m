mu = 10;
sigma = sqrt(10);
num_samples = 10000;

x1 = mu + sigma * randn(1, num_samples);

bin = 100;
[counts, bin_centers] = hist(x1, bin);

% histogram
figure(1);
bar(bin_centers, counts);
xlabel('Value');
ylabel('Count');
title('Sampling from Gaussian Distribution');

% graph(100 sample only)
figure(2);
n_stem = 0:99
stem(n_stem, x1(1:100)); title('Ex 2.1a'); xlabel('n'); ylabel('x(n)');
