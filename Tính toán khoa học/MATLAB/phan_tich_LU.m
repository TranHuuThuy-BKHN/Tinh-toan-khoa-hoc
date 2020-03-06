function [L, U, P] = phan_tich_LU(A)
    n = length(A);
    L = zeros(n);
    P = 1:n;
    for i = 1:n
      [C, I] = max(abs(A(i:end, i))); 
      I = I+i-1;
      A([i I], :) = A([I i], :); 
      P([i I]) = P([I i]);
      L([i I]) = L([I i]);   
      L(i+1:end, i) = A(i+1:end, i)/A(i,i);
      A(i+1:end, :) = A(i+1:end, :) -  A(i+1:end, i)/A(i,i) * A(i, :);
    end
    U = A;
    L = L + eye(n);
end