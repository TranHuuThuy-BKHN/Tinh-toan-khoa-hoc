function x = khu_nguoc(U, y)
    x = zeros(size(y));
    
    for i = length(y) : -1 : 1
        x(i) = y(i) / U(i, i);
        y(1:i-1) = y(1:i-1) - U(1:i-1, i) * x(i);
    end
end