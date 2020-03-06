f = @(x) x.^3 - 3*x + 1;
x = -5:5;
y = f(x) + 20 * (rand(size(x)) - 0.5);
P = @(a, x) polyval(a, x);
L = @(x, y, a) mean((y - P(a, x)).^2)/2;
dL = @(x, y, a) [mean((P(a, x) - y).*(x.^3))...
                 mean((P(a, x) - y).*(x.^2))...
                 mean((P(a, x) - y).*x)...
                 mean((P(a, x) - y))];
a = [0 0 0 0]; err = 1e-2;
lr = 0.0001;
log = [];
for i = 1:1000
    a = a - lr * dL(x, y, a); 
    L(x, y, a)
end
t = -5:0.01:5;

plot(x, y, 'ro', t, f(t), 'g', t, P(a, t),'b'); 
          