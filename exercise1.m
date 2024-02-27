v1= 1:1:100;
v2= rand(1, 100);


v3 = [v1 ; v2];

dlmwrite("randomexercise.txt" , v3)
