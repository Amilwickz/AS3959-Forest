clear;
close all;
%AS3959 sensitivity analysis fuel consumption forest FDI 100 BAL 29 Radiative heat flux 

Radiative_heat_flux_fuel_20percent = [0.195887783	0.30699591	0.04527482	0.065422249	0.107459468	0.12171728	0.020096152	0.092049218];
Radiative_heat_flux_fuel_40percent = [0.611072835	1.1111905	0.5719042	0.44730306	0.87333616	0.57045098	0.04858318	0.63945849];
Radiative_heat_flux_fuel_60percent = [2.7380921	4.551600267	1.794053373	2.1225147	3.4820991	2.8280207	0.221674853	2.4624849];
Radiative_heat_flux_fuel_80percent = [9.139787825	28.92777833	5.2475223	7.7357576	20.23617567	11.760551	0.94641192	11.43184195];
Radiative_heat_flux_fuel_Thomas = [2.317654975	3.985072167	1.53417111	2.039502	3.0577521	2.7275203	0.252656073	2.2113113];


plot([Radiative_heat_flux_fuel_20percent],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0, 0.4470, 0.7410]);
hold on
plot([Radiative_heat_flux_fuel_40percent],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.8500, 0.3250, 0.0980]);
plot([Radiative_heat_flux_fuel_60percent],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.9290, 0.6940, 0.1250]);
plot([Radiative_heat_flux_fuel_80percent],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4940, 0.1840, 0.5560]);
plot([Radiative_heat_flux_fuel_Thomas],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4660, 0.6740, 0.1880]);



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

legend('fuel consumption 20%','fuel consumption 40%','fuel consumption 60%','fuel consumption 80%','fuel consumption Thomas et al.')
