f = @(y) - y^1.5 + 1;
h = 0.1;
t = 0:h:1;
e = 1e-4;

y = zeros(size(t));
y(1) = 10;

for i = 2:length(t)
    yk = y(i-1);
    yk1 = y(i-1) + h/2 * (f(yk) + f(y(i-1)));
    
    while abs(yk1 - yk) > e
        yk = yk1;
        yk1 = y(i-1) + h/2 * (f(yk) + f(y(i-1)));
    end
    y(i) = yk1;
end
disp(y);