% -- z = 3x - 2y --%

x = 0:0.1:10;
y = x;

[X, Y] = meshgrid(x, y);
surf(X, Y, 3*X - 2*Y);

% -- z = x2y - 2y tren [-2, 2] x [-1, 1]
[X, Y] = meshgrid(-2:.1:2, -1:.1:1);
surf(X, Y, X.^2 .* Y - 2*Y);

% -- z = sin(sqrt(x2+y2)) / sqrt(x2+y2) tren [-8, 8] x [-8, 8] --%
[X, Y] = meshgrid(-8.01:.5:8, -8.01:.5:8);
surf(X, Y, sin(sqrt(X.^2 + Y.^2)) ./ sqrt(X.^2 + Y.^2));


% -- x2+y2+z2 = 9 --%
phi = linspace(0, 2*pi, 50);
theta = phi;
[PHI, THETA] = meshgrid(phi, theta);
surf(3*cos(PHI) .* sin(THETA), 3*sin(PHI) .* sin(THETA), 3*cos(THETA));




