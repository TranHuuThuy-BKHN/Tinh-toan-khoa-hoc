f = @(x) x.^3 + 3*x.^2 - 5*x + 1;
x = -1:.2:1;
y = f(x) + (rand(size(x)) - 0.5)*10;

xx = -1:0.01:1;

yy = harmonic_fit(x, y, 1000, xx);

plot(x, y, 'o' , xx, yy);

