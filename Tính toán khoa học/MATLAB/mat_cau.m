theta = 0:0.1:2*pi;
phi = theta;

[PHI,THETA] = meshgrid(phi, theta);
surf(3*sin(PHI) .* cos(THETA), 3*sin(PHI).*sin(THETA), 3*cos(PHI));


x = -1.11:0.1:1; y = x;
[X, Y] = meshgrid(x, y);
surf(X, Y, X.*Y ./ sqrt(X.^2 + Y.^2));

