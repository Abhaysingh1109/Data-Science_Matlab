% Number of terms
n = 10;

% Preallocate the Fibonacci vector
f = zeros(1, n);

% Initial values
f(1) = 0;
f(2) = 1;

% Compute the Fibonacci sequence
for i = 3:n
    f(i) = f(i-1) + f(i-2);
end

% Display the result
disp(f)



% ***************** While Loop **************

%% Compute the first n Fibonacci numbers using a while loop

n = 10;                 % Number of terms
f = zeros(1, n);        % Preallocate the vector

% Initial values of the Fibonacci sequence
f(1) = 0;
f(2) = 1;

% Start from the third element
i = 3;
while i <= n
    f(i) = f(i-1) + f(i-2);  % Fibonacci recurrence relation
    i = i + 1;              % Increase index
end

% Display the result
disp(f)
