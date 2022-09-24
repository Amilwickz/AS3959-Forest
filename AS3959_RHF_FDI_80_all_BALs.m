clear;
close all;
%AS3959 average Radiative heat flux Forest FDI80 

Radiative_heat_flux_BAL12p5 = [3.042404	4.2568874	3.03503289	2.6757229	4.976885733	3.4525092	0.022146019	4.13870615];
Radiative_heat_flux_BAL19 = [5.3061128	6.974822733	4.013836297	3.8795253	7.175294	5.0360181	0.028205126	5.780819];
Radiative_heat_flux_BAL29 = [10.72466243	16.72195833	7.021711167	7.6542003	14.37406333	12.146698	0.06323399	11.8228265];
Radiative_heat_flux_BAL40 = [21.15197025	35.46858667	11.97018563	16.128264	28.83510033	25.063714	0.112425463	22.5359095];
Radiative_heat_flux_FZ = [57.37724225	125.0698103	20.2672803	39.054878	82.938275	43.985594	0.29259874	45.180205];


plot([Radiative_heat_flux_BAL12p5],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0, 0.4470, 0.7410]);
hold on
plot([Radiative_heat_flux_BAL19],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.8500, 0.3250, 0.0980]);
plot([Radiative_heat_flux_BAL29],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.9290, 0.6940, 0.1250]);
plot([Radiative_heat_flux_BAL40],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4940, 0.1840, 0.5560]);
plot([Radiative_heat_flux_FZ],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4660, 0.6740, 0.1880]);



ylabel('Radiative heat flux (kW.m^{-2})','FontWeight','bold','FontSize',20,...
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
