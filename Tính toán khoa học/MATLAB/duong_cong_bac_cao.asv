function [v, coeff] = duong_cong_bac_cao(x, y, m, u)
    b = zeros(m+1,1);
    A = [];
    for i = 0:m
        A = [A;x.^i];
        b(i+1) = sum(y .* x.^i);
    end
    A = A * A'; 
    coeff = A\b;
    coeff = coeff(end:-1:1);
    v = polyval(coeff, u);
end