function res = matrix(x, n)

    row = @(x, n, i) x .^[i - 1 : n + i - 1];
    
    res = []
    for i = 1:n+1
        res = [res; row(x, n, i)];
    end
end