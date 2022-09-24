clear;
close all;
%AS3959 average Convective heat flux Forest FDI80 

Convective_heat_flux_BAL12p5 = [0.121496285	0.084701132	0.014175915	0.02228964	0.074427795	0.019636898	0.017227024	0.046406001];
Convective_heat_flux_BAL19 = [3.128881544	2.322135828	2.443961976	0.004424732	4.750391963	5.4668972	3.800031375	2.916789869];
Convective_heat_flux_BAL29 = [0.135207903	0.134436904	0.020181165	0.043125942	0.065218792	0.070847034	0.003552472	0.079947885];
Convective_heat_flux_BAL40 = [0.166304318	0.29561101	0.033415465	0.063804025	0.085722471	0.14259892	0.014028567	0.109809299];
Convective_heat_flux_FZ = [2.333724575	10.29990477	0.31002515	1.2473315	3.220397403	4.8057171	0.036509175	1.19860987];


plot([Convective_heat_flux_BAL12p5],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0, 0.4470, 0.7410]);
hold on
plot([Convective_heat_flux_BAL19],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.8500, 0.3250, 0.0980]);
plot([Convective_heat_flux_BAL29],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.9290, 0.6940, 0.1250]);
plot([Convective_heat_flux_BAL40],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4940, 0.1840, 0.5560]);
plot([Convective_heat_flux_FZ],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4660, 0.6740, 0.1880]);



ylabel('Convective heat flux (kW.m^{-2})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');





ax = gca;
ax.XTickLabels = {'Roof','Gutter','Sub-floor','Door','Deck','Window','Back wall','Front wall'};
grid on;


box on
xtickangle(45)
xlabel('Location','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('BAL 12.5','BAL 19','BAL 29','BAL 40','BAL FZ')
