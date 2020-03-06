
fg = @(z, y, t) [z, -t*z - 2*y + sin(t)];

h = 0.01;
t = 0:h:2;

yz = zeros(length(t), 2);

for i = 1:length(t) - 1
    kl1 = h*fg(yz(i, 2), yz(i, 1), t(i));
    kl2 = h*fg(yz(i, 2) + kl1(2), yz(i, 1) + kl1(1), t(i+1));
    yz(i+1, :) = yz(i, :) + 0.5 * (kl1 + kl2);
end

plot(t, yz(:,1), t, yz(:, 2));

