%--  Tach A --> P, L, U --%
%--  Giai Ly = Pb de suy ra y --%
%--  Giai Ux = y--%

function [P, L, U] = lutx(A)
    n = length(A)
    P = 1:n
    for k = 1 : n-1
        [~, m] = max(abs(A(k : n, k)));
        m = m + k - 1;
        
        if k ~= m
            A([k m], :) = A([m k], :);
            P([k m]) = P([m k]);
        end
        idx = k + 1 : n;
  
        A(idx, k) = A(idx, k) / A(k, k);
        A(idx, idx) = A(idx, k:m) - A(idx,k) * A(k, idx);
    end
    U = triu(A);
    L = tril(A, -1) + eye(n);
end