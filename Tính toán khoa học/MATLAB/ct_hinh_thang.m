f = @(x) 0.3 + 20*x -140*x.^2 + 730*x.^3 - 810*x.^4 + 200*x.^5;
x = linspace(0.2, 0.8, 4);
h = x(2) - x(1);
y = f(x);
I = h/2 * sum(y(1:end-1) + y(2:end));
disp(I);