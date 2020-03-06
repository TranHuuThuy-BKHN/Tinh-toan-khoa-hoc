f = @(x) x.*(x-1.5);
a = 0;
b = 1;
e = 0.01;
x = [];
x1 = 0;
while abs(b-a) >= 2*e
    x1 = a + (b-a)/2 - e/2;
    x2 = a + (b-a)/2 + e/2;
    f1 = f(x1);
    f2 = f(x2);
    if f1 < f2; b = x2; x = [x 0 b];
    elseif f1 > f2; a = x1; x = [x 0 a];
    else a = x1; b = x2; x = [x 1 a b];
    end
    
end

disp(x1);
xx = 0:0.01:1;
yy = f(xx);
plot(xx, yy); hold on;
i = 1;
n = length(x);
while i < n+1
    if x(i) == 0; plot(x(i+1), f(x(i+1)), 'ro'); i = i + 2; hold on;
    else plot([x(i+1),x(i+2)], [f(x(i+1)), f(x(i+2))], 'ro'); i = i + 3; hold on;
    end
    pause(2);
end