clear;
close all;
%AS3959 average Radiative heat flux Forest FDI50 

Radiative_heat_flux_BAL12p5 = [3.72659695	5.212245067	3.112106603	2.9952101	5.276289433	3.573871	0.015925061	4.26341755];
Radiative_heat_flux_BAL19 = [5.436759725	8.901570767	4.447124833	4.8933529	8.153852433	5.413753	0.024050876	6.4192473];
Radiative_heat_flux_BAL29 = [10.61566818	19.09154933	7.402774567	9.1624528	15.38345667	11.535288	0.046698765	11.7089845];
Radiative_heat_flux_BAL40 = [16.66497425	36.540596	11.7716672	16.620813	30.84500933	21.868633	0.077297332	21.3397785];
Radiative_heat_flux_FZ = [40.57673	123.4414757	25.51848643	42.20606	125.6999633	75.554609	0.21370337	48.9940145];


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
