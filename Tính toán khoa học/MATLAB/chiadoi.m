
f = @(x) exp(x) - 2;

a = 0; c = 2;
e = 0.01;
b = (a+c)/2;

x = [b];

while abs(f(b)) >= e
   if f(a) * f(b) < 0
        c = b;
   
   elseif f(b) * f(c) < 0
        a = b;
   end
   b = (a+c)/2;
   x = [x b];
end

xx = 0:0.01:2;
yy = f(xx);
x
plot(x, zeros(1, length(x)), 'ro', xx, yy);



