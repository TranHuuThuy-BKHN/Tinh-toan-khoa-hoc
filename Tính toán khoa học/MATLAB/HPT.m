A = [10 -7 0; -3 2 6; 5 -1 5];
B = [7 4 6]';

if rank(A)== rank([A B])
    if det(A) ~= 0
        X = A\B
    else fprinf('Vo so nghiem\n')
    end
else fprinf('Vo nghiem\n')
end