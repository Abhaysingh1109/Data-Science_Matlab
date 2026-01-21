%% Draw a Normal random variable and its density function

% Parameters of the normal distribution
mu = 0;        % Mean
sigma = 1;     % Standard deviation

% Domain of the random variable
x = -4:0.1:4;

% Probability density function values
y = normpdf(x, mu, sigma);

% Plot the density function
figure
plot(x, y, 'LineWidth', 2)
grid on
xlabel('x')
ylabel('Probability Density')
title('Normal Distribution with \mu = 0 and \sigma = 1')