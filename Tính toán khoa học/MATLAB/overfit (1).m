f = @(x) x.^3 + 3*x.^2 - 5*x + 1;
x = -1:.2:1;
m = 11; 
u = -1:.001:1;
for lambda = 10.^(-5:5) 
    for i=1:20
        y = f(x) + (rand(size(x)) - 0.5)*10;
        plot(x, y, 'ro');
        hold on;
        v = polyregress1(x, y, m, u, lambda);
        plot(u, v, 'r');
    end  
    plot(u, f(u), 'LineWidth', 2, 'Color', 'green');
    title(['lambda =' num2str(lambda)]);
    pause;
    hold off;
    axis
end
 

