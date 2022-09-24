clear;
close all;
%AS3959 average Radiative and Convective heat flux Forest FDI100 BAL 12.5.

Radiative_heat_flux = [1.254150022	1.737339826	1.226282736	1.114861978	2.102013892	1.434263692	0.007685384	1.742328993];
yyaxis left
plot([Radiative_heat_flux],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0 0.4470 0.7410]);
ylabel('Radiative heat flux (kW.m^{-2})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');



Convective_heat_flux = [0.003193507	0.006557299	0.001831529	0.003535999	0.00447066	0.005892026	0.000904749	0.005394862 ];
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
