N = 10;
fib = zeros(1, N);
fib(1) = 0;
fib(2) = 1;
for i = 3:N; fib(i) = fib(i-1) + fib(i-2);end

f = @(x) x.^2 - 2*x + 1;
a = 0; b = 2;k = 1;
x1 = 0; x2 = 0; x = [];
while k < N-1
    x1 = fib(N-1-k)/fib(N+1-k) *(b-a) + a;
    x2 = fib(N-k)/fib(N+1-k) *(b-a) + a;
    k = k + 1;
    f1 = f(x1); f2 = f(x2);
    if f1 < f2; b = x2; x = [x 0 b];
    elseif f1 > f2; a = x1; x = [x 0 a];
    else a = x1; b = x2; x = [x 1 a b];
    end
end

disp(x1);
xx = 0:0.01:2;
yy = f(xx);
plot(xx, yy); hold on;
i = 1;
n = length(x);
while i < n+1
    if x(i) == 0; plot(x(i+1), f(x(i+1)), 'ro'); i = i + 2; hold on;
    else plot([x(i+1),x(i+2)], [f(x(i+1)), f(x(i+2))], 'ro'); i = i + 3; hold on;
    end
    pause(2);
end