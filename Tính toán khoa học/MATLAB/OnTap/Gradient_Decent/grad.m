x = -5:5;
y = x.^3 - 3*x.^2 + 1 + 30*rand(size(x));
k = 3;
n = length(x);
e = 1;
lr = 0.0001;
a = zeros(1, k+1);
GD = ones(1,k+1);

for j = 1:1000
    fx = polyval(a, x)';
    for i = 1:k+1
        GD(i) = ((x.^(k+1-i)) * (fx - y')) / n;
    end
    a = a - lr*GD;
    disp(0.5/n*sum((polyval(a, x) - y) .^ 2))
end

xx = -5:0.01:5;
yy = polyval(a, xx);
plot(x, y, 'ro', xx, yy);
    