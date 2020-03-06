function v = harmonic_fit(x, y, k, u)
    v = zeros(1, length(u));
    A = zeros(k);
    n = length(x);
    b = zeros(1, k);
    
    for l = 1:k
        for j = 1:k
           A(l,j) = sum(sin(2*pi*j*x/k) .* sin(2*pi*l*x/k)); 
        end
        b(l) = sum(y .* sin(2*pi*l*x/k));
    end
    
    coeff = (A\b')';
    
    f = @(x) sum(coeff .* sin(2*pi*[1:k]* x / k));
    
    for i = 1:length(u)
        v(i)= f(u(i));
    end
end