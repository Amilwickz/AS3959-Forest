clear;
close all;
%AS3959 firebrand mass flux vertical distribution Forest FDI100.

Firebrand_flux_BAL12p5 = [163.07	130.00	96.78	75.12	62.83	70.75	45.74	36.59	28.28];
Firebrand_flux_BAL19 = [162.57	130.26	96.36	74.62	62.50	70.91	46.74	37.92	29.92];
Firebrand_flux_BAL29 = [163.31	130.13	94.41	72.45	60.37	67.46	44.91	36.20	27.74];
Firebrand_flux_BAL40 = [162.61	130.26	95.46	73.80	62.38	70.82	46.39	36.82	28.13];
Firebrand_flux_BALFZ = [163.07	131.14	96.02	74.05	61.66	69.35	45.39	36.23	27.47];

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
