x = [0 1 2 3 ];
y = [-5 -6 -1 16];

u = 0.25:0.001:3.25;
v = polyinterp(x, y, u);
plot(x, y, 'o', u, v, '-');