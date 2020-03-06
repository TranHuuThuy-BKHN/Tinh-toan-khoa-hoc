%-- ve x2 + y2 = 4 và (x-1)2 + (y-1)2 = 1 --%

t = 0:0.1:2*pi;

subplot(1, 3, 1);
plot(2*cos(t), 2*sin(t), 'r', cos(t)+1, sin(t)+1, 'b')
subplot(1,3,2)
plot(2*cos(t), 2*sin(t), 'r')
subplot(1, 3, 3)
plot(cos(t)+1, sin(t)+1, 'b')