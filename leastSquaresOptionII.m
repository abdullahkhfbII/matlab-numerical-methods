clc;
clear;

% Given data points
x = [10 15 20 25 40 50 55];
y = [5 20 18 40 33 54 70];

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
