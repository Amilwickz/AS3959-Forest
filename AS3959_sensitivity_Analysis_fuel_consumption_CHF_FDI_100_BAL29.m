clear;
close all;
%AS3959 sensitivity analysis fuel consumption forest FDI 100 BAL 29 Convective heat flux 

Convective_heat_flux_fuel_20percent = [0.102375853	0.241610027	0.031500016	0.056864098	0.132070424	0.17705734	0.024211695	0.075158733];
Convective_heat_flux_fuel_40percent = [0.385286598	0.639024	0.087570423	0.22051258	0.334801873	0.35662636	0.065678716	0.409579905];
Convective_heat_flux_fuel_60percent = [1.583513025	2.058341467	1.079859703	0.57837162	1.307661067	1.2556746	0.252585093	1.3464226];
Convective_heat_flux_fuel_80percent = [2.255732	6.3544674	2.224152967	1.613208	4.1146526	2.4526362	0.70616356	3.91766895];
Convective_heat_flux_fuel_Thomas = [1.40536681	2.268627233	1.03244872	0.64017631	1.601788367	1.4098213	0.280742243	1.58887365];


plot([Convective_heat_flux_fuel_20percent],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0, 0.4470, 0.7410]);
hold on
plot([Convective_heat_flux_fuel_40percent],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.8500, 0.3250, 0.0980]);
plot([Convective_heat_flux_fuel_60percent],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.9290, 0.6940, 0.1250]);
plot([Convective_heat_flux_fuel_80percent],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4940, 0.1840, 0.5560]);
plot([Convective_heat_flux_fuel_Thomas],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4660, 0.6740, 0.1880]);



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

legend('fuel consumption 20%','fuel consumption 40%','fuel consumption 60%','fuel consumption 80%','fuel consumption Thomas et al.')
