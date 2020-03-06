f = @(y, t) -20*y + 7*exp(-0.5*t);

t = 0:0.01:0.1;
h = 0.01;
n = length(t);
y = zeros(1,n);
y(1) = 5;

for i = 1:n-1
    y(i+1) = y(i) + h * f(y(i), t(i)); 
end


g = @(t) 5*exp(-20*t) + 7/19.5*(exp(-0.5*t) - exp(-20*t));
xx = t;
yy =g(xx);
plot(t, y,'bo',t, y,'b', xx, yy, 'r');

