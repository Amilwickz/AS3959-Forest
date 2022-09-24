clear;
close all;
%AS3959 Maximum Radiative and Convective heat flux Forest FDI100 BAL 12.5.

Radiative_heat_flux = [3.188029075	4.082956333	2.230902463	2.419182	4.3863971	3.1804082	0.021191854	3.3593616];
yyaxis left
plot([Radiative_heat_flux],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0 0.4470 0.7410]);
ylabel('Radiative heat flux (kW.m^{-2})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');



Convective_heat_flux = [0.118114813	0.074970313	0.018155683	0.012154626	0.052419703	0.039048942	0.030788951	0.03068313];
yyaxis right

plot([Convective_heat_flux],'s--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.8500 0.3250 0.0980]);
ylabel('Convective heat flux (kW.m^{-2})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

ax = gca;
ax.XTickLabels = {'Roof','Gutter','Sub-floor','Door','Deck','Window','House back','stairs'};
grid on;


box on
xtickangle(45)
xlabel('Location','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('Radiative heat flux','Convective heat flux')
