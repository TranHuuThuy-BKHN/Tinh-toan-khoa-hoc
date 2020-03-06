f = @(x) x.^3 - 3*x + 1;
x = -2:2;
y = f(x) + 20 * (rand(size(x)) - 0.5);
P = @(a, x) polyval(a, x);
n = length(x);
m = 1;
k = 8;
L = @(x, y, a) mean((y - P(a, x)).^2)/2;
dL = @(x, y, a) ... 
    mean(repmat(P(a,x') - y', 1, k+1) .* ... 
    (repmat(x', 1, k+1) .^ ...
     repmat(k:-1:0, length(x), 1)));

 a = zeros(1, k + 1); err = 1e-2;
lr = 0.00001;
log = [];
for i = 1:100
    idx = randperm(n);
    % shuffle data
    x_new = x(idx);
    y_new = y(idx);
    for j = 0:n/m-1
        x_batch = x_new(m*j+1:m*(j+1));
        y_batch = y_new(m*j+1:m*(j+1));
        a = a - lr * dL(x_batch, y_batch, a); 
        log = [log L(x, y, a)];
        disp(L(x, y, a));
    end
end
t = -5:0.01:5;
plot(log); pause;
plot(x, y, 'ro', t, f(t), 'g', t, P(a, t),'b'); 
          