% Muhammet Emin Altuncu 090210150
% Question 5: Lagrange interpolation

% Code
clear all
clc

x = [1, 2, 3];
y = [10, 20, 30];

x_interp = 2.5;

N= length(x);
y_interp = 0;
for i = 1:N
    lambda = ones(1,N);
    for j = 1:N
        if i ~= j
            lambda(i) = lambda(i) * (x_interp - x(j)) / (x(i) - x(j));
        end
    end
    y_interp = y_interp + y(i) * lambda(i);
end

y_interp
