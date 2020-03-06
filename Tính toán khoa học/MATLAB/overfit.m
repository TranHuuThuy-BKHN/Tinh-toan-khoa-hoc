f = @(x) x .^ 3 + 3 * x .^ 2 - 5*x + 1;

x = -1 : 0.2:1;

m = 11;
u = -1:0.002:2;

for lamda = 10 .^(-5:5)
    for i = 1:20
        y = f(x) + (rand(size(x) - 0.5)) * 10;
        plot(x,y,'ro');
        hold on;
        v = polyregress1(x, y, m,u, lamda);
        plot(u, v, 'r');
    end
    plot(u, f(u),'LineWidth', 2, 'Color', 'green');
    
end  