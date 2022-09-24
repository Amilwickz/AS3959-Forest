clear;
close all;
%AS3959 firebrand mass flux vertical distribution Forest FDI50.

Firebrand_flux_BAL12p5 = [62.56	42.84	27.05	20.61	16.96	18.45	9.15	5.98	4.14];
Firebrand_flux_BAL19 = [63.20	43.54	27.62	21.02	16.96	18.81	9.70	6.39	4.44];
Firebrand_flux_BAL29 = [62.90	43.09	27.04	20.50	16.97	18.73	9.52	6.01	4.16];
Firebrand_flux_BAL40 = [62.74	42.96	27.19	20.59	16.81	18.49	9.33	5.75	3.85];
Firebrand_flux_BALFZ = [62.35	42.20	26.99	20.65	17.06	18.82	9.76	5.88	3.95];

plot([Firebrand_flux_BAL12p5],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0, 0.4470, 0.7410]);
hold on
plot([Firebrand_flux_BAL19],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.8500, 0.3250, 0.0980]);
plot([Firebrand_flux_BAL29],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.9290, 0.6940, 0.1250]);
plot([Firebrand_flux_BAL40],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4940, 0.1840, 0.5560]);
plot([Firebrand_flux_BALFZ],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4660, 0.6740, 0.1880]);
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

legend('BAL 12.5','BAL 19','BAL 29','BAL 40','BAL FZ')
