function v = intermpoly(x, y, u)
    n = length(x);
    a = [];
    for i = 0:n-1
        a = [a;x .^ i];
    end
    X = y / a
    
end