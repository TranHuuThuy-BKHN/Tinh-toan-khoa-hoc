
f = @(y, t) -20 * y + 7 * exp(-0.5 * t);
sol = @(t) 5 * exp(-20*t) + 7/19.65 * (exp(-0.5*t) - exp(-20*t));

h = input('h =  ');
t = 0:h:0.1;

y = zeros(1, length(t));
y(1) = 5;

for i = 2:length(t)
    y(i) = h * f(y(i-1), t(i-1)) + y(i-1);
end

plot(t, y, 'ro-', t, sol(t));