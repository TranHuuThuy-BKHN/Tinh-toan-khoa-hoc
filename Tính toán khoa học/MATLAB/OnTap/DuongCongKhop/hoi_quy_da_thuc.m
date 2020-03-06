function [v, coeff] = hoi_quy_da_thuc(x, y, n, u)
   A = [];
   b = zeros(n + 1, 1);
   for i = 0:n
       A =[A; x .^ i];
       b(i+1) = sum(x .^ i .* y);
   end
   A = A * A'; 
   coeff = A\b;
   coeff = coeff(end:-1:1);
   v = polyval(coeff, u);
end  