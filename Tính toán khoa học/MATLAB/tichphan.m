

function I = tichphan(a, b, n)
    h = (b-a)/n;
    X = [a:h:b];
    f = @(x) 0.3 + 20 * x - 140 * x .^ 2 + 730 * x .^ 3 - 810 * x .^ 4 + 200 * x .^ 5;
    Y = f(X);
    Y = (Y(1:end-1) + Y(2:end)) / 2;
    Y = Y * h;
    I = sum(Y);
end