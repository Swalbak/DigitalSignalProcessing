% 한밭대 20191780 육정훈

n = [0:7]; x = cos(pi*n/3); y = filter(b,a,x,xic)

% Matlab Verification
A=real(2*R(1)); B=imag(2*R(1)); C=real(2*R(3)); D=imag(2*R(4));
y=A*cos(pi*n/3)+B*sin(pi*n/3)+((0.95).^n).*(C*cos(pi*n/3)+D*sin(pi*n/3))
