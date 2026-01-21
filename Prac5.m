% Contingency table analysis

% 2x2 frequency matrix
N = [87 188;
     42 406];

% Observed frequency in cell (1,1)
n11 = N(1,1);

% Expected frequency for cell (1,1)
n11_star = sum(N(1,:)) * sum(N(:,1)) / sum(N,'all');

% Difference between observed and expected frequency
diff = n11 - n11_star;

% Display the result
if diff > 0
    disp('Positive association')
else
    disp('Negative association')
end

disp(['Difference n11 - n11* = ', num2str(diff)])
