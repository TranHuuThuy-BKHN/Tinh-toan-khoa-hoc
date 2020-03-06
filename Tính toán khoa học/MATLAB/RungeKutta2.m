fz = @(z, y, t) 3*z + 2*y - sin(t);
fy = @(z) z;

h = 0.01;
t = 0:h:2;
n = length(t);
y = zeros(1, n); 
z = zeros(1, n); z(1) = 1;

for i = 1:n-1
    k1 = h*fz(z(i), y(i), t(i));
    l1 = h*fy(z(i));
    
    k2 = h*fz(z(i) + k1, y(i) + l1, t(i+1));
    l2 = h*fy(z(i) + k1);
    
    y(i+1) = y(i) + 0.5*(k1+k2);
    z(i+1) = z(i) + 0.5*(l1+l2);
end
plot(t,y);