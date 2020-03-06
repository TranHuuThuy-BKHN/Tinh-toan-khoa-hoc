fileID = fopen('Gauss_Seidel_Iterative_V1.txt', 'r');

n = 20;
temperature = fscanf(fileID, '%f')';
m = length(temperature) / n / n;

x = linspace(0, 19, 20);
y = x;

[Y,X] = meshgrid(x, y);

for i = 1:m
    Z = reshape(temperature((i-1)*n*n + 1 : i*n*n), [n, n])';
    surf(X, Y, Z);
    zlim([0 1])
    pause(0.1);
    hold off
end