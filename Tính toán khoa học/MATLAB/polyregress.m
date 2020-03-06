function [v, a] = polyregress(x, y, m, u)
    b = zeros(1,m+1);   
    for i = 1:m+1
        b(i) = sum((x .^ (i-1)) .* y);
    end  
    A = zeros(m + 1);
    for i = 1: m+1
        for j = 1:i;
            A(i, j) = sum(x .^ (i+j-2));
            if i == j ;A(i, j) = A(i, j) / 2 ;end
        end
    end
    A = A + A';
    a = A\b';
    a = a(end:-1:1);
    v = polyval(a, u);  
end