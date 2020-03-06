A = [ 3 2; 1 -1];
B = [-1 1]';
%-- AX= B--%
X_left = A\B
%-- XA= B, X_right = B/A --%


X_right = B'/A'