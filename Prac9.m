%% Standard and Robust Z-score analysis with plots

% Dimensions
n = 20;
p = 3;

% Reproducibility
rng(123)

% Generate data with outliers
X = 10 + 3*randn(n,p);
X([5 8], :) = 100;   % Add outliers

%% -------------------------------
% Standard Z-score
%% -------------------------------

Z = (X - mean(X,1)) ./ std(X,0,1);   % Manual standardization
Zchk = zscore(X);                    % MATLAB check

% Plot standard Z-scores
figure
bar(Z)
grid on
xlabel('Observations')
ylabel('Z-score')
title('Bar plot of standardized values (Z-score)')

%% -------------------------------
% Robust Z-score
%% -------------------------------

Zrob = (X - median(X,1)) ./ (1.4826 * mad(X,1,1));
Zrobchk = zscoreFS(X);   % FSDA robust standardization

% Plot robust Z-scores
figure
bar(Zrob)
grid on
xlabel('Observations')
ylabel('Robust Z-score')
title('Bar plot of robust standardized values')

%% -------------------------------
% Comparison plot (standard vs robust)
%% -------------------------------

figure
subplot(1,2,1)
bar(Z)
title('Standard Z-score')
xlabel('Observations')
ylabel('Z')

subplot(1,2,2)
bar(Zrob)
title('Robust Z-score')
xlabel('Observations')
ylabel('Robust Z')
grid on

%% -------------------------------
% Implicit expansion with tables
%% -------------------------------

load citiesItaly.mat

% Center columns by their mean
citiesCentered = citiesItaly - mean(citiesItaly,1);
disp(citiesCentered)

% Row-wise ratios: columns 2–4 divided by column 1
citiesRatio = citiesItaly(:,2:4) ./ citiesItaly{:,1};
disp(citiesRatio)
