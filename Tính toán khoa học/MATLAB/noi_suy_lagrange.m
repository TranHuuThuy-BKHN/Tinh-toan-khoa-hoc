function v = noi_suy_lagrange(x, y, u)
    n = length(u);
    v = zeros(size(u));
    for i = 1:n
        for j = 1:length(x)
            X = x(x ~= x(j));
            v(i) = v(i) + y(j) * prod(u(i) - X) / prod(x(j) - X);
        end
    end
    plot(x, y, 'o', u, v, '-');
end