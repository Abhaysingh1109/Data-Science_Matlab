% My Github account - Abhaysingh1109


load datiAz  


SIN = rmmissing(datiAz);


medianN = median(SIN.Ndipendenti);
madianN = mad(SIN.Ndipendenti,1);   
SIN.Ndipendenti = (SIN.Ndipendenti - medianN) ./ (1.4826 * madianN);


medianF = median(SIN.Fatturato);
madianF = mad(SIN.Fatturato,1);
SIN.Fatturato = (SIN.Fatturato - medianF) ./ (1.4826 * madianF);

figure
boxplot(SIN.Fatturato, SIN.Area, 'Orientation','horizontal')
xlabel('Revenue for area (standardized values)')
ylabel('Area of Italy')
title('Robustly standardized Revenue by Area')
grid on



% commenting on the plot what I have to plot
%******************************************


% this plot illustrates the distribution of standardized 
% revenue across different areas of Italy.
% it is evident that the median revenue varies significantly by region, 
% highlighting the economic disparities.
% in the North, the presence of several outliers indicates that some 
% firms are performing exceptionally well,
% contributing to a wider spread in revenue values. 
% this suggests a dynamic and competitive market in that area.
% Conversely, the Centre appears to have a more uniform distribution 
% of revenue, with firms clustering around the median,
% which may reflect a more stable economic environment 
% or similar business practices among firms.
% the South, on the other hand, shows a tendency 
% towards lower standardized revenue values,
% indicating potential challenges faced by firms in that region, 
% along with fewer instances of high revenue outliers.


Y = SIN(SIN.Fatturato <= 2, :);
