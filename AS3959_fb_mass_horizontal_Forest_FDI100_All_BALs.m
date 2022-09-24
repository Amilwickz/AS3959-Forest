clear;
close all;
%AS3959 firebrand mass flux horizontal distribution Forest FDI100 

Firebrand_flux_BAL12p5 = [25.45	22.80	18.64	14.09	8.89	5.34	3.72	2.39	1.18	0.73	0.55	0.35	0.20	0.14];
Firebrand_flux_BAL19 = [25.21	22.94	19.35	14.26	9.20	5.49	2.87	1.55	1.17	0.95	0.63	0.29	0.16	0.11];
Firebrand_flux_BAL29 = [25.49	23.95	20.46	14.72	7.66	3.97	2.67	2.25	1.56	0.99	0.61	0.37	0.23	0.17];
Firebrand_flux_BAL40 = [24.88	23.55	19.66	11.18	6.20	4.96	3.48	2.34	1.66	1.01	0.53	0.33	0.19	0.15];
Firebrand_flux_BALFZ = [24.38	19.06	15.09	12.97	8.86	5.46	3.54	2.30	1.61	1.01	0.60	0.32	0.15	0.10];

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