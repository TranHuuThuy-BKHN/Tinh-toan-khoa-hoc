function [v, coefs] = duong_cong_khop_2(x, y, k, u)
    b = zeros(k,1);
    v = zeros(size(u));
    for i = 1:k
        b(i) = sum(y .* sin(i*x));
    end
    A =  sin((1:k)' * x);
    A = A * A';
    coefs = A\b;
    f = @(X) sum(coefs'.*sin((1:k).* X));
    for i = 1:length(u)
        v(i) = f(u(i));
    end
    plot(x, y, 'o', u, v, '-');
end