fw = @(t,w, y) sin(t) * w - t * y - cos(t);


h = input('h = ');
t = 0:h:2;
n = length(t);

y = zeros(1, n);
z = zeros(1, n);
w = zeros(1, n);

y(1) = -1;
z(1) = 0;
w(1) = 1;

for i = 2:n
    y(i) = y(i-1) + h * z(i-1);
    z(i) = z(i-1) + h * w(i-1);
    w(i) = w(i-1) + h * fw(t(i-1), w(i-1), y(i-1)); 
end

plot(t, y, 'ro-', t,z, 'b', t, w, 'g');