function res = check_prime(k)
    res = 1;
    if k > 1
        for i = [2 : sqrt(k)]
           if mod(k, i) == 0 
               res = 0;
               break;
           end
        end
    else
        res = 0;
    end
end