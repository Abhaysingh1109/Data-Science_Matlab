%% Load the MAT file
load('adm.mat');  % Loads the table 'dipendenti'

%% Define Region for each employee
nRows = height(dipendenti);
Region = strings(nRows,1);

Region(1:30) = "Region A";          % First 30 rows
Region(end-29:end) = "Region B";    % Last 30 rows
Region(31:end-30) = "Other Regions";% Remaining rows

dipendenti.Region = categorical(Region);  % Add Region as categorical variable

%% Construct the boxplot
figure;
boxplot(dipendenti.Wage, dipendenti.Region);
title('Boxplot of Wage by Region');
xlabel('Region of Residence');
ylabel('Wage');
grid on;





