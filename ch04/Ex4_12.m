% 한밭대 20191780 육정훈

b = [0, 1, 1];
a = [1, -0.9, 0.81];
[R, p, C] = residuez(b, a);
Mp = (abs(p))';
Ap = (angle(p))'/pi;


