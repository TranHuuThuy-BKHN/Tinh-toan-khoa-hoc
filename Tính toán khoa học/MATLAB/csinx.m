
function v = csinx(x, y, m, u)
    n = length(x);
    A = zeros(m);
    b = zeros(1,m);
    v = zeros(1, length(u));
    
    for i = 1: m
         b(i) = sum(y .* sin(i * x));
        for j = 1:m
            A(i,j) = sum(sin(j * x) .* sin(i*x));
        end
    end
    
    coeff = (A\b')';
    f = @(x) sum(sin([1:m] .* x) .* coeff);
    
    for i = 1:length(v)
        v(i) = f(u(i));
    end
    
end