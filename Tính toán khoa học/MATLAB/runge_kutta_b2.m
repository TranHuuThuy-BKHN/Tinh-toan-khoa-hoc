f = @(y, t) sin(t)*y^2 - sin(2*t) - t^2;

h = 0.01;
t = 0:h:2;
n = length(t);
y = zeros(1, n);

for i = 1:n-1
    k1 = h*f(y(i), t(i));
    k2 = h*f(y(i) + k1, t(i+1));
    
    y(i+1) = y(i) + 0.5 * (k1+k2);
end

plot(t, y);