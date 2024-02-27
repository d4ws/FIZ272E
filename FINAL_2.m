% Muhammet Emin Altuncu 090210150
% Question 2: Monte carlo calculation of -1 to 1 x^2dx integral

% Code

a = -1;
b = 1;

N = 1000;

x = (b-a)*rand(1,N)+a;
f = x.^2;
hizli_monte = (b-a)*sum(f)/N
