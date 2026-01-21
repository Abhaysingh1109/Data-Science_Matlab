% Compare dictionary vs tables for creation and lookup speed

% Number of entries
n = 1e6;

% Generate keys and values
myKeys = "ID" + string(1:n)';       % Column vector of string IDs
myValues = randn(n,1);              % Random values
nkey = 1000;                         % Number of keys to search
keysToSearch = randsample(myKeys, nkey); % Random keys to look up

%% 1. Dictionary approach
tic
dict = dictionary(myKeys, myValues); % Create dictionary
tDictCreate = toc;

tic
outDict = dict(keysToSearch);        % Lookup values by keys
tDictLookup = toc;

%% 2. Table with 2 columns
tic
T2 = table(myKeys, myValues);        % Create table
tT2Create = toc;

tic
outT2 = zeros(nkey,1);               % Preallocate output
for k = 1:nkey
    idx = strcmp(T2.myKeys, keysToSearch(k)); % Find matching row
    outT2(k) = T2.myValues(idx);             % Get value
end
tT2Lookup = toc;

%% 3. Table with 1 column and RowNames
tic
T1 = table(myValues, 'RowNames', myKeys); % Table with RowNames
tT1Create = toc;

tic
outT1 = T1{keysToSearch,1};               % Lookup by RowNames directly
tT1Lookup = toc;

%% Verify that all outputs are the same
assert(max(abs(outDict - outT2)) < eps, 'Mismatch between dictionary and table(2col)');
assert(max(abs(outT2 - outT1)) < eps, 'Mismatch between table(2col) and table(1col)');

%% Display results
disp('--- Creation time ---')
disp(['Dictionary create:        ' num2str(tDictCreate) ' s'])
disp(['Table (2 col) create:    ' num2str(tT2Create) ' s'])
disp(['Table (1 col, RowNames): ' num2str(tT1Create) ' s'])

disp('--- Lookup time ---')
disp(['Dictionary lookup:        ' num2str(tDictLookup) ' s'])
disp(['Table (2 col) lookup:    ' num2str(tT2Lookup) ' s'])
disp(['Table (1 col, RowNames): ' num2str(tT1Lookup) ' s'])
