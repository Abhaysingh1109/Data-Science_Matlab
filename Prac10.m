% Load the data
load('dati.mat');  % This should load the table 'dipendenti'

% Extract variable names (assuming the table has at least 4 variables)
varNames = dipendenti.Properties.VariableNames(1:4);

% Create a figure
figure;

% Loop over the first 4 variables
for i = 1:4
    subplot(2,2,i);  % 2x2 grid of plots
    
    % Get the data for the i-th variable
    data = dipendenti.(varNames{i});
    
    % Plot histogram with normalized counts
    histogram(data, 'Normalization', 'pdf');  
    hold on;
    
    % Compute and plot non-parametric density estimate
    [f, xi] = ksdensity(data);
    plot(xi, f, 'r', 'LineWidth', 2);  % Density in red line
    
    % Add title with variable name
    title(varNames{i});
    
    % Add grid for better visualization
    grid on;
end

% Add overall title with full name
sgtitle('Abhay Pratap Singh', 'FontSize', 16, 'FontWeight', 'bold');
