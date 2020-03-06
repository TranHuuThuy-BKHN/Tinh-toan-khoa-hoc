

function coefs = gradient_decent(x, y, k, lr)
    coefs = zeros(1, k+1);
    grad = zeros(1, k+1);
    err = 100;
    epsilon = 1e-5;
    
    while err > epsilon     
        
        for j = k:-1:0 
            grad(k + 1 - j) = mean((polyval(coefs, x) - y) .* (x .^ j));
        end   
        
        err = norm(grad);
        coefs2 = coefs - lr * grad;
        coefs = coefs2;
    end
    
    xx = -20:0.1:20;
    yy = polyval(coefs, xx);
    plot(x, y, 'o', xx, yy, 'r-');
    
end



