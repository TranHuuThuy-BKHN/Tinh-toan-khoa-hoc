function res = perm_script(n)
    b = 1 : n;
    disp(b);
    while(1) 
        k = -1;
        for i = n : -1 : 2
            if b(i) > b(i - 1); k = i - 1; break ; end
        end
        
        if k == -1 ; break; end
        
        for i = n : -1 : k+1
            if b(k) < b(i)
                b([k i]) = b([i k]);
                b(k + 1 : n) = b(n:-1:k+1);
                disp(b);
                break
            end
        end
        
    end
end