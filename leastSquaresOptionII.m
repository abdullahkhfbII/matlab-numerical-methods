clc;
clear;

% Given data points
x = [2 3 4 5 6];
y = [27.8 62.1 110 140 234.5];

n = length(x);

% Equation components
a = [n; sum(x)];
b = [sum(x); sum(x.^2)];
res = [sum(y); sum(x .* y)];

% Form the coefficient matrix
ab = [a b];

% Solve for [intercept; slope]
sol = ab \ res;

% Display results (not necessary for core calculation)
disp(['Intercept (a) = ', num2str(sol(1))]);
disp(['Slope (b) = ', num2str(sol(2))]);
disp(['Equation: y = ', num2str(sol(1)), ' + ', num2str(sol(2)), 'x']);
