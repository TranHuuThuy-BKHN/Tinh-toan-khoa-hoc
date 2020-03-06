function [L, U, p] = lutx2(A, b)
    n = length(A);
    L = zeros(n);
    U = zeros(n);
    p = 1:n ;
    for i = 1:n-1
        [v, iRow] = max(abs(A(i:n, i)));
        iRow = i + iRow - 1;
        A([i, iRow], :) = A([iRow, i], :);
        p([i, iRow]) = p([iRow, i]);
        L([i, iRow], :) = L([iRow, i], :);
        
        for j = i+1:n
            L(j, i) =  A(j, i) / A(i,i);
            A(j, :) = A(j, :) - A(j, i) / A(i,i) * A(i, :);
        end

    end
    U = A;
    L = L + eye(n);
end