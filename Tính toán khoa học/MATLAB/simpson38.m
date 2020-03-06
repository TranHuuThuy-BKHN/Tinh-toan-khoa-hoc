function I = simpson38(f,a,b,n)   
    X = linspace(a, b, n);
    h = X(2) - X(1);
    I = 3 * h / 8 * (- f(a) - f(b) + 3*sum(f(X)) - sum(f(X(1:3:n))));
end