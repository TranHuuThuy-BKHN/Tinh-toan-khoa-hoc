function  x = chia_nguoc(A, b)
    [L, U, P] = lutxx(A);
    y = khu_xuoi(L, P, b);
    x = khu_nguoc(U, y);
end