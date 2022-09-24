clear;
close all;
%AS3959 firebrand mass flux horizontal distribution Forest FDI80 

Firebrand_flux_BAL12p5 = [22.60	21.49	16.77	10.76	6.34	4.00	2.57	1.25	0.89	0.69	0.45	0.25	0.17	0.11];
Firebrand_flux_BAL19 = [23.25	22.16	17.94	11.74	6.49	3.54	1.67	1.07	1.03	0.68	0.43	0.23	0.16	0.11];
Firebrand_flux_BAL29 = [23.04	21.78	17.47	11.39	4.16	2.75	2.31	1.39	1.03	0.70	0.40	0.25	0.18	0.15];
Firebrand_flux_BAL40 = [22.38	21.80	16.42	8.17	4.45	3.69	2.14	1.50	0.95	0.60	0.37	0.24	0.17	0.13];
Firebrand_flux_BALFZ = [22.00	17.19	12.89	10.48	5.61	3.30	2.22	1.51	0.97	0.66	0.45	0.27	0.16	0.11];

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