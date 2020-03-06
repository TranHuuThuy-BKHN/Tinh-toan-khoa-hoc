x = 1:10;
y = [10 -1 9 4 8 20 19 25 30 100];
u = 1:0.1:10;

A = [sum(x.^2) sum(x); sum(x) length(x)];
b = [sum(x .* y); sum(y)];

coeff = A\b;
v = polyval(coeff, u);

plot(x, y, 'o', u, v, 'r-');
