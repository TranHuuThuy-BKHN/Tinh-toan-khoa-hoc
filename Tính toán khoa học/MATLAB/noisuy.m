function [v, a] = noisuy(x, y, u)
    n = length(x) - 1;
    v = 1 : length(u);
    A = [];
    for i = 1:n+1
        A = [A; x(i).^[0:n]];
    end
    a = (A\y)';
    a = a(n+1:-1:1);
    
    for i = 1 : length(u) 
        v(i) = sum(u(i) .^ [0:n] .* a);
    end
end