f = @(x) x.^2 - 2*x + 1;
a = 0; b = 2;k = 1;
x1 = 0; x2 = 0; x = [];
e = 0.00001;
while abs(b-a) >= 2*e
    x1 = 0.382*(b-a) + a;
    x2 = 0.618*(b-a) + a;
    f1 = f(x1); f2 = f(x2);
    if f1 < f2; b = x2; x = [x 0 b];
    elseif f1 > f2; a = x1; x = [x 0 a];
    else a = x1; b = x2; x = [x 1 a b];
    end
end

disp(x1);
fprintf('[%f, %f]', a, b);
xx = 0:0.01:2;
yy = f(xx);
plot(xx, yy); hold on;
i = 1;
n = length(x);
while i < n+1
    if x(i) == 0; plot(x(i+1), f(x(i+1)), 'ro'); i = i + 2; hold on;
    else plot([x(i+1),x(i+2)], [f(x(i+1)), f(x(i+2))], 'ro'); i = i + 3; hold on;
    end
    pause(1);
end