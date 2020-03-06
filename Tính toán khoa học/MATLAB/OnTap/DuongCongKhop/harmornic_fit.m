function v = harmornic_fit(x, y, k, u)
    A = zeros(k-1, length(x));
    b = zeros(k-1, 1);
    v = zeros(size(u));
    for i = 1:k-1
        A(i, :) = sin(2*pi/k*i*x);
        b(i) = sum(sin(A(i, :) .* y));
    end
    A = A * A';
    coeff = A\b;
    g = @(x) sum(coeff' .* sin(2*pi/k *[1:k-1]*x));
    for i = 1:length(u)
        v(i) = g(u(i));
    end
end