

f = @(x)exp(-x/2).*sin(3*x);
e = 1e-3;
h = 1e-6;
x1 = input('x1 = ');
x2 = input('x2 = ');

while abs(f(x2)) > e
    df = (f(x1) - f(x2)) / (x1 - x2);
    x3 = x1 - f(x1)/df;
    x1 = x2; x2 = x3;
end

xx = -10:0.01:10;
yy = f(xx);
disp(x2);
plot(xx, yy, x2, f(x2), 'o');




