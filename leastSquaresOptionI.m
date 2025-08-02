clc;
clear;

% Given data points
x = [10 15 20 25 40 50 55];
y = [5 20 18 40 33 54 70];

n = length(x);

% Summations
sum_x = sum(x);
sum_y = sum(y);
sum_xy = sum(x .* y);
sum_x2 = sum(x.^2);

% Calculate slope (b) and intercept (a)
b = (n * sum_xy - sum_x * sum_y) / (n * sum_x2 - sum_x^2);
a = (sum_y - b * sum_x) / n;

% Display results (not necessary for core calculation)
disp(['Slope (b): ', num2str(b)]);
disp(['Intercept (a): ', num2str(a)]);
disp(['Equation: y = ', num2str(a), ' + ', num2str(b), 'x']);
