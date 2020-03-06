

A = [];
for i =1:4
    theta = input('nhap gia tri theta:');
    
d = input('nhap gia tri d:');
a = input('nhap gia tri a:');
anpha = input('nhap gia tri anpha:');

a11 = cosd(theta);
a12 = -cosd(anpha)*sind(theta);
a13 = sind(anpha)*sind(theta);
a14 = a*cosd(theta);
a21 = sind(theta);
a22 = cosd(anpha)*cosd(theta);
a23 = -sind(anpha)*cosd(theta);
a24 = a*sind(theta);
a31 = 0;
a32 = sind(anpha);
a33 = cosd(anpha);
a34 = d;

A = [A [a11 a12 a13 a14; a21 a22 a23 a24; a31 a32 a33 a34; 0 0 0 1]];
end

A = [A A(:, [1:4]) * A(:, [5:8]) * A(:, [9:12]) * A(:, [13:16])];
f = @(x) A(:, [x:x + 3]);
