clear all
clc

matrix = dlmread("randomexercise.txt")

v1 = matrix(1,:);
v2 = matrix(2,:);
plot(v1,v2)


N = size(v2,2);

[maxel , minel , average , sigma , closest] = findeverything(v2)


