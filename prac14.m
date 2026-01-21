%% Load dataset
load smoke

%% Contingency table
SING = pivot(smoke, ...
    "Rows","profession", ...
    "Columns","smoke_frequency", ...
    "RowLabelPlacement","rownames");

%% Nominal association measures + plot of Chi-square contributions
out = corrNominal(SING,'plots',1);
