function p = lagrange(X, Y, x)
    n = length(x);
    p = zeros(1, n);
    N = length(X);   
    for i = 1 : n       
        for j = 1:N
            tu = prod(x(i) - X) / (x(i) - X(j));
            mau = X(j) - X;
            mau = mau(mau ~= 0);
            mau = prod(mau);           
            p(i) = p(i) + tu / mau * Y(j);
        end 
    end
end