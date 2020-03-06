f = @(x) x .^ 3 - x + 1;
x0 = -1;
h = 0.01;
x = [x0];

while abs(f(x0)) > h
    dfx = (f(x0 + h) - f(x0 - h)) / (2*h);
    x0 = x0 - f(x0)/dfx;
    x = [x x0];
end

x
y = f(x);
xx = -4:0.01:2;
yy = f(xx);
plot(x,y,'ro', xx, yy, xx, zeros(1, length(xx)), 'g');

