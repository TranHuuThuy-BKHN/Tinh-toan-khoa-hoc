function y = findY(L, P, b)
    n = length(b)
    y = 1:n
    
    b1 = b(p)
    
    for i = 1 : n 
        y(i) = b1(i) / L(i, i)
        b(i + 1 : n) = b(i + 1 : n) - y(i) * L(i+1:n, i)
    end

end