f = @(x) x.^3 + 3*x.^2 - 5*x + 1;
x = -1:.2:1;
y = f(x) + (rand(size(x)) - 0.5)*10;
hold off;
plot(x,y,'ro'); hold on;

m = 1000; n = length(x);
p = @(x) sin(2*pi*[1:m]*x/m); % p = [phi1,...,phi_m]
A = zeros(m);
b = zeros(m, 1);
for k=1:n
    A = A + p(x(k))'*p(x(k));
    b = b + y(k) * p(x(k))';
end
c = A \ b;

xx = -1:0.01:1;
yy = zeros(size(xx));
for i = 1:length(xx)
    yy(i) = sum(c.*p(xx(i))');
end
plot(xx, yy);
plot(x, f(x),'g');
