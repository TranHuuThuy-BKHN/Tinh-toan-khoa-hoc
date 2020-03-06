f = @(y) - (y^1.5) + 1;
h = 0.1;
t = 0:h:1;
n = length(t);
y = zeros(1,n);
y(1) = 10;
eps = 1e-6;
for i = 1:n-1
    y(i+1) = y(i);
    y2 = y(i) + h/2*(f(y(i+1)) + f(y(i)));
    while(abs(y2 - y(i+1)) > eps)
        y(i+1) = y2;
        y2 = y(i) + h/2*(f(y(i+1)) + f(y(i)));
    end
    y(i+1) = y2;
end

disp(y);