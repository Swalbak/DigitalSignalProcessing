num_samples = 100000;
n = 0 : 99999;

x1 = 2 * rand(1, num_samples);

bin = 100;
[counts, bin_centers] = hist(x1, bin);

% histogram
figure(1);
bar(bin_centers, counts);
xlabel('Value');
ylabel('Count');
title('Histogram of Uniformly Distributed Samples');

% graph(100 sample only)
figure(2);
n_stem = 0:99
stem(n_stem, x1(1:100)); title('Ex 2.1a'); xlabel('n'); ylabel('x(n)');

