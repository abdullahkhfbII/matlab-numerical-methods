clc;
clear;

% Define the function and its derivative
f = @(x) x^3 - x - 2;
df = @(x) 3*x^2 - 1;

% Initial guess
x0 = 1.5;

% Tolerance (percentage error)
tol = 0.01; % This means 0.01% tolerance

% Max number of iterations
max_iter = 100;

for i = 1:max_iter
    x1 = x0 - f(x0)/df(x0);  % Newton-Raphson formula

    % Compute percentage relative error
    percent_error = abs((x1 - x0)/x1) * 100;

    disp(['Iteration ', num2str(i), ': x = ', num2str(x1), ...
        ', Percentage error = ', num2str(percent_error), '%']);

    if percent_error < tol
        disp(['Root found at x = ', num2str(x1), ' after ', num2str(i), ' iterations.']);
        break;
    end

    x0 = x1;  % Update for next iteration
end

% If no convergence
if i == max_iter
    disp('Did not converge to a root within the max number of iterations.');
end
