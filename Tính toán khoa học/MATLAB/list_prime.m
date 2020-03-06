function res = list_prime(n)
    for i = [1 : n]
       if(check_prime(i) == 1)
           fprintf('%d ', i);
       end
    end
end