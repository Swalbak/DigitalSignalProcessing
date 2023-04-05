% conv_tp.m
% 한밭대 20191780 육정훈

function [y,H]=conv_tp(h,x)
% Linear Convolution using Toeplitz Matrix
% [y,H] = conv_tp(h,x)

nx = length(x); nh = length(h);
hc = [h; zeros(nx-1, 1)]; hr = [h(1),zeros(1,nx-1)];
H = toeplitz(hc,hr); y = H*x;

