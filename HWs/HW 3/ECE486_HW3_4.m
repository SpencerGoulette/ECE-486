f = linspace(-0.5,0.5,1001);
z = exp(1i .* 2 .* pi .* f);
H1 = (1.0000.*z.^(2) + 1.6180.*z.^(1) + 1.0000)./(1.*z.^(2) + -1.5371.*z.^(1) + 0.9025);
H2 = (1.0000.*z.^(2) - 0.6180.*z.^(1) + 1.0000)./(1.*z.^(2) - 0.8100);

H1 = abs(20*log10(H1));
H2 = abs(20*log10(H2));

Fig1 = figure('Position', [200, 75, 850, 600]); % set figure size and location
plot(f,H1,f,H2); % stem plot
grid on; % add grid
set(gca, 'fontsize', 16); % increase font size
xlabel('frequency, Hz', 'fontsize', 16); % x label
ylabel('dB', 'fontsize', 16); % y label
title('Homework 3, problem 4', 'fontsize', 16); % title