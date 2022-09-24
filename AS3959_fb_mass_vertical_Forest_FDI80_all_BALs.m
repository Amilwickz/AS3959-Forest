clear;
close all;
%AS3959 firebrand mass flux vertical distribution Forest FDI80.

Firebrand_flux_BAL12p5 = [130.11	99.87	69.35	53.12	44.19	50.46	31.00	22.60	15.60];
Firebrand_flux_BAL19 = [131.65	101.19	69.23	51.87	43.29	49.63	31.19	22.98	15.57];
Firebrand_flux_BAL29 = [131.02	100.52	69.14	52.11	43.34	49.85	30.68	23.05	16.24];
Firebrand_flux_BAL40 = [130.20	100.16	68.50	51.37	42.86	49.07	30.03	22.06	15.71];
Firebrand_flux_BALFZ = [129.39	99.71	68.21	51.80	43.89	50.03	31.06	22.96	16.55];

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
