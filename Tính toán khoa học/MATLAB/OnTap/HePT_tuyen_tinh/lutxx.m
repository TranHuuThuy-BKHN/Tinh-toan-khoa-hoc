function [L, U, P] = lutxx(A)
    n = length(A);
    P = 1:n;
    L = zeros(n);
    for i = 1:n
        [C, I] = max(abs(A(i:end, i))); %-- tra ve hang co phan tu tru lon nhat--%
        I = I + i - 1;
        %-- xac dinh doi cho P va L
        if i ~= I
            A([i I], :) = A([I i], :);
            P([i I]) = P([I i]);
            L([i I], :) = L([I i], :);
        end
        L(i+1:end, i) = A(i+1:end, i) / A(i, i);
        rate = A(i+1:end, i) / A(i, i);
        A(i+1:end, :) = A(i+1:end, :) - rate * A(i, :);
    end   
    U = A;
    L = L + eye(n);
end