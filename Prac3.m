
% Numeric column (10x1)
numericData = (1:10)';

% String column (10x1)
stringData = repmat(["LTD"; "LLC"; "PLC"], 4, 1);
stringData = stringData(1:10);

% Logical column (10x1)
booleanData = [true; false; true; false; true; ...
               false; true; false; true; false];

% Create the table
T = table(numericData, stringData, booleanData, ...
    'VariableNames', {'NumericColumn', 'StringColumn', 'BooleanColumn'}, ...
    'RowNames', {'CompanyA','CompanyB','CompanyC','CompanyD', ...
                 'CompanyE','CompanyF','CompanyG','CompanyH', ...
                 'CompanyI','CompanyJ'});

% Display the table
disp(T)
