%% From array to table

% Numeric array
data = [110.63,   3.7;
        736871, 12157];

% Convert array to table
Summary = array2table(data, ...
    'VariableNames', {'Acquisti_in_euro', 'Numero_visite'}, ...
    'RowNames', {'Media_mensile', 'Totale_mensile'});

% Display the table
disp(Summary)
