f = @(y, z) 0.05*z - 0.15*y;
g = @(z) z;

h = 0.01;
t = 0:h:3;
n = length(t);

y = zeros(1, n);
z = zeros(1, n);
y(1) = 1;

for i = 1:n-1
    k1 = h*f(y(i), z(i));
    l1 = h*g(z(i));
  
    k2 = h*f(l1+y(i), z(i) + k1);
    l2 = h*g(z(i) + k1);
    
    y(i+1) =y(i) + 0.5*(l1+l2);
    z(i+1) =z(i) + 0.5*(k1+k2);
end

plot(t,y);