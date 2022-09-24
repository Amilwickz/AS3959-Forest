clear;
close all;
%AS3959 firebrand distribution Forest FDI100, 80, 50

Firebrand_distribution_FDIs = [25.08 22.66 13.86; 22.46 20.88 11.63;18.64 16.30 7.22; 13.45 10.51 3.63; 8.16 5.41 2.04; 5.04 3.45 1.23; 3.26 2.18 0.79; 2.16 1.34 0.53; 1.44 0.97 0.36; 0.94 0.67 0.27; 0.58 0.42 0.19; 0.33 0.25 0.16; 0.19 0.17 0.13; 0.13 0.12 0.11];

bar(Firebrand_distribution_FDIs)

ax = gca;
ax.XTickLabels = {'x=132 m~138 m',	'x=138 m~144 m',	'x=144 m~150 m',	'x=150 m~ 156 m',	'x=156 m~162 m',	'x=162 m~168 m',	'x=168 m~174 m',	'x=174 m~180 m',	'x=180 m~186 m',	'x=186 m~192 m',	'x=192 m~198 m',	'x=198 m~204 m',	'x=204 m~210 m',	'x=210 m~216 m'};
grid on;




box on
xtickangle(45)
xlabel('Location','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
ylabel('Firebrand flux (kg.s^{-1})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('FDI100','FDI80','FDI50')