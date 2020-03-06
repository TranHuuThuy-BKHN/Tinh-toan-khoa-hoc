g = @(x) x .* x - 2;
x = 1.8;
xx = [x];
yy = g(xx);
while abs(x - g(x)) > 1e-5
    x = g(x);
    xx = [xx x x];
    yy = [yy x g(x)];
end

disp(x);
t = -2:0.1:3;
plot(t, g(t), 'r', t, t, 'g', xx, yy, '--');