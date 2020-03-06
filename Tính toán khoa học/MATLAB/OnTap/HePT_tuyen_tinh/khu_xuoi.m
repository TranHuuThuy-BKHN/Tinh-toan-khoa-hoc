function y = khu_xuoi(L, P, b)
    b = b(P);
    y = zeros(size(b));
    
    for i = 1: length(b)
        y(i) = b(i);
        b(i+1:end) = b(i+1:end) - L(i+1:end, i) * y(i); 
    end
    
end