X = [14, 15, 16, 17, 18, 19, 20];
Y = [24.444, 26.111, 22.222, 27.222, 28.889, 30, 31.667];

# Calculate observed values
observed = [X; Y];

# Calculate row and column totals
row_totals = sum(observed, 2);
col_totals = sum(observed, 1);
total = sum(row_totals);

# Calculate expected values
expected = row_totals * col_totals / total;

# Calculate chi-square statistic
chi_squared = sum(sum((observed - expected).^2 ./ expected));

# Print results
disp("Observed Values:");
disp(observed);
disp("Expected Values:");
disp(expected);
disp("Chi-Squared Statistic:");
disp(chi_squared);

