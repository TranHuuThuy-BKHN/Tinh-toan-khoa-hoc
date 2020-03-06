function v = polyinterp(x, y, u)
    v = zeros(size(u));
    k = length(u);
    n = length(x);
    for i = 1:k
        for j = 1:n
           w = x(x ~= x(j));
           v(i) = v(i) + prod(u(i) -  w)/prod(x(j) -w) * y(j);
        end
    end
end