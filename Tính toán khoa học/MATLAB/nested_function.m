function res = nested_function(n)
    square_number  = @(x) x.^ 2;
    res  = 0;
    
    for i = 1:n
        res = res + square_number(i);
    end
end