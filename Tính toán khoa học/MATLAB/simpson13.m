f = @(x) x.*exp(-x);

x = linspace(0.5, 4.5, 1024);
y = f(x);
h = x(2) - x(1);

I = h/3 * (y(1) + y(end) + 4*sum(y(2:2:end-1))  + 2*sum(y(3:2:end-1)));

disp(I);
