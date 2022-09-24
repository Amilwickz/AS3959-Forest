clear;
close all;
%AS3959 firebrand mass flux horizontal distribution Forest FDI50 

Firebrand_flux_BAL12p5 = [14.12	12.40	8.14	4.23	2.36	1.08	0.58	0.45	0.35	0.28	0.18	0.16	0.12	0.10];
Firebrand_flux_BAL19 = [14.08	12.28	8.43	4.38	1.76	1.00	0.77	0.57	0.35	0.27	0.18	0.16	0.13	0.11];
Firebrand_flux_BAL29 = [14.13	12.25	8.06	2.77	1.42	1.26	0.82	0.55	0.37	0.26	0.20	0.15	0.13	0.11];
Firebrand_flux_BAL40 = [14.16	12.13	5.47	2.75	2.25	1.36	0.87	0.53	0.33	0.26	0.17	0.16	0.14	0.12];
Firebrand_flux_BALFZ = [12.81	9.07	6.02	4.05	2.40	1.45	0.89	0.55	0.40	0.28	0.20	0.16	0.13	0.11];

plot([Firebrand_flux_BAL12p5],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0, 0.4470, 0.7410]);
hold on
plot([Firebrand_flux_BAL19],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.8500, 0.3250, 0.0980]);
plot([Firebrand_flux_BAL29],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.9290, 0.6940, 0.1250]);
plot([Firebrand_flux_BAL40],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4940, 0.1840, 0.5560]);
plot([Firebrand_flux_BALFZ],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4660, 0.6740, 0.1880]);
ax = gca;
ax.XTickLabels = {'x=132 m~138 m','x=138 m~144 m','x=144 m~150 m','x=150 m~ 156 m','x=156 m~162 m','x=162 m~168 m','x=168 m~174 m','x=174 m~180 m','x=180 m~186 m','x=186 m~192 m','x=192 m~198 m','x=198 m~204 m','x=204 m~210 m','x=210 m~216 m'};

grid on;


box on
xtickangle(45)
xlabel('Location of the horizontal plane','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
ylabel('Firebrand mass flux (kg.s^{-1})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('BAL 12.5','BAL 19','BAL 29','BAL 40','BAL FZ')