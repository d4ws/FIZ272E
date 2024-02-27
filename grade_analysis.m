function[myav , mymax, mymin] = grade_analysis(mygrades)

myav = sum(mygrades)/length(mygrades);
mymax = max(mygrades);
mymin = min(mygrades);

endfunction
