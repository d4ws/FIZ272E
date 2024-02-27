## Muhammet Emin Altuncu 090210150



# The primary use of the chi-square test is to
# examine whether two variables are independent or not.
# For example, assume that you have x and y values in a table.
# You want to learn whether this values have a relationship between each other.
# Chi square test helps you find answer for this question.


###### Code

#reading the data
dataMEA = dlmread("sleeplessnights.txt");

XMEA = dataMEA(:,1);
YMEA = dataMEA(:,2);
NMEA = length(XMEA);

#our datatable:
#                               Total
#X:      14 15 16 17 18  19  20  119
#Y:      76 79 72 81 84  86  89  567
#Total:  90 94 88 98 102 105 109 686


###### Calculation of the expected frequency for each cell

#the formula for expected frequency goes like this:
#for each cell; that cell's row total times that cell's column total
#divided by the sum of every value.

#here is an example to find expected frequency for 14.
#row total of 14 is 119, column total of 14 is 90 and sum of
#every value is 686. So the calculation should be 90*119/686 which is
#approximately 15,61.

###### Calculation of sum of rows, sum of cols, and sum of every value.
sum_of_rowXMEA = sum(XMEA);
sum_of_rowYMEA = sum(YMEA);
sum_of_colsMEA = zeros(1,NMEA);
for i = 1:NMEA
    sum_of_colsMEA(i) = XMEA(i) + YMEA(i);
endfor
sum_of_every_valueMEA = sum_of_rowXMEA + sum_of_rowYMEA;


###### Coding of expected values part

expected_XMEA = zeros(1,NMEA);
expected_YMEA = zeros(1,NMEA);
for i= 1:NMEA
  expected_XMEA(i) = sum_of_colsMEA(i)*sum_of_rowXMEA/sum_of_every_valueMEA;
endfor

for i= 1:NMEA
  expected_YMEA(i) = sum_of_colsMEA(i)*sum_of_rowYMEA/sum_of_every_valueMEA;
endfor

expected_XMEA
expected_YMEA
#after every calculation, we have this table.
#								                                         Total
#X       15,61	 16,30	15,26	  17   17,70	18,21	 18,90	119
#Y       74,39	 77,70	72,74	  81   84,30	86,79	 90,10  567
#Total :	 90	    94	    88	  98	  102 	  105	  109	  686



#Now, we are ready to apply the chi square test.
#formula for chi square is:
# (observed frequency – expected frequency)**2
#  divided by the expected frequency
# we have to apply this formula for each cell and take sum of every result.

###### Coding of chi square
chi_sqMEA = 0;
for i = 1:NMEA
  chi_sqMEA = chi_sqMEA + (XMEA(i) - expected_XMEA(i))^2 /expected_XMEA(i) + (YMEA(i) - expected_YMEA(i))^2 /expected_YMEA(i);
endfor

chi_sqMEA

# our value for chi square is 0.4945
# now we need to find the degrees of freedom and to decide the alpha value.
# formula for degrees of freedom is (number of rows - 1)*(number of columns -1)
# in most cases, alpha value is set to 0,05. So i will be using this value as alpha value.

degrees_of_freedomMEA = (NMEA-1)*(2-1); # =6
alphaMEA = 0.05;

# in chi square table, 6 degrees of freedom and 0.05 alpha value gives 12.592 as critical statistic.
# our result was 0.4945. Because this value is less than critical statistic,
# we can not reject the null hypothesis.
# that means there is no relationship between our X and Y values.


###### reference list
#https://soc.utah.edu/sociology3112/chi-square.php
#https://www.simplilearn.com/tutorials/statistics-tutorial/chi-square-test
