clear;
close all;
%Average AS3959 firebrand mass flux vertical distribution Forest FDI100.

Total_firebrand_flux_vertical_FDI100 = [162.92	130.36	95.81	74.01	61.95	69.86	45.83	36.75	28.31];
Total_firebrand_flux_vertical_FDI80 = [130.47	100.29	68.89	52.06	43.52	49.81	30.79	22.73	15.94];
Total_firebrand_flux_vertical_FDI50 = [62.75	42.92	27.18	20.68	16.95	18.66	9.49	6.00	4.11];

plot([Total_firebrand_flux_vertical_FDI100],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0, 0.4470, 0.7410]);
hold on
plot([Total_firebrand_flux_vertical_FDI80],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.8500, 0.3250, 0.0980]);
plot([Total_firebrand_flux_vertical_FDI50],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.9290, 0.6940, 0.1250]);


ax = gca;
ax.XTickLabels = {'x=130 m','x=140 m','x=150 m','x=160 m','x=170 m','x=180 m','x=190 m','x=200 m','x=210 m'};

grid on;


box on
xtickangle(45)
xlabel('Vertical plane location','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
ylabel('Firebrand mass flux (kg.s^{-1})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('Firebrand flux through vertical planes at FDI 100','Firebrand flux through vertical planes at FDI 80','Firebrand flux through vertical planes at FDI 50')
