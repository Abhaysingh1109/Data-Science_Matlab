
load USArrest;

pivotTable = array2table(records, 'VariableNames', ...
{'Murder', 'Assault', 'UrbanPop', 'Rape'}, ...
'RowNames', stateNames);
disp(pivotTable);



stateNames = string(USArrest.Properties.RowNames);
records = table2array(USArrest);

stateDictionary = containers.Map(stateNames, mat2cell(records, ...
ones(size(records, 1), 1),size(records, 2)));


disp(stateDictionary);

% Fistly I have to Load the USArrest dataset.

% Now I have to extract the name of states and manupliate to a string.

% the after converting all the data into in number array.

% after that make a dictionary that associates each name according to the 
% records.





