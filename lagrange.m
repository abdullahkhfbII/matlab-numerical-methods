clc;
clear;

% Given data points
x = [0 1 2 3 4 5 6];
y = [0 0.84 0.91 0.14 -0.76 -0.96 -0.28];

% Point to interpolate at
xp = 3.5;

n = length(x); % Number of data points
sm = 0; % Interpolated value

% Lagrange interpolation
for i = 1:n
    pr = 1;
    for j = 1:n
        if i ~= j
            pr = pr * (xp - x(j)) / (x(i) - x(j));
        end
    end
    sm = sm + pr * y(i);
end


disp(['Interpolated value at x = ', num2str(xp), ' is ', num2str(sm)]);
