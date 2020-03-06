f = @(x) exp(-x/2).*sin(3*x);
x0 = 4;
x1 = 5;
h = 0.001;
x = [];

while abs(f(x0)) > h
    sk = (f(x1) - f(x0)) / (x1-x0);
    x0 = x1;
    x1 = x1 - f(x1)/sk;
    x = [x x0];
end

x(end)
y = f(x(end));
xx = 0:0.01:10;
yy = f(xx);
plot(x(end),y,'ro', xx, yy);
