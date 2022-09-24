clear;
close all;
%AS3959 average Radiative and Convective heat flux Forest FDI100 

Radiative_heat_flux_BAL12p5 = [3.188029075	4.082956333	2.230902463	2.419182	4.3863971	3.1804082	0.021191854	3.3593616];
Radiative_heat_flux_BAL19 = [5.4256327	7.039003167	3.668925887	4.0238136	7.337501033	4.9141817	0.033898809	5.66423745];
Radiative_heat_flux_BAL29 = [11.00026985	15.68821367	6.517177833	7.6833092	14.107837	11.537167	0.060012117	11.14023995];
Radiative_heat_flux_BAL40 = [18.84117375	30.242321	10.72679277	12.740654	25.046784	21.184865	0.118452993	20.196312];
Radiative_heat_flux_FZ = [43.75822475	84.69649733	18.60444877	35.77589	63.27519267	53.789539	0.41007727	41.759928];


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
