clear;
close all;
%AS3959 sensitivity analysis fuel consumption forest FDI 100 BAL 29 firebrand flux 

firebrand_flux_fuel_20percent = [0.144417786	0.205312161	0.262352848	0.005653753	0	0.073888794	0	0.042680578	0.141945018];
firebrand_flux_fuel_40percent = [0.823346528	0.782592704	1.010252053	0.029000862	0	0.440812051	0	0.165552281	0.501146184];
firebrand_flux_fuel_60percent = [1.189768065	1.157025773	1.198104578	0.132032302	0.074166467	1.386640933	0.039006842	0.305272136	0.788864148];
firebrand_flux_fuel_80percent = [1.849866889	1.717799174	2.212486074	0.297149511	0.033219235	4.863682188	0.318374116	0.658836982	1.280252764];
firebrand_flux_fuel_Thomas = [1.131845636	0.812998618	0.930434672	0.094465937	0.073887852	1.493695613	0.021208758	0.22419838	0.828163592];


plot([firebrand_flux_fuel_20percent],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0, 0.4470, 0.7410]);
hold on
plot([firebrand_flux_fuel_40percent],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.8500, 0.3250, 0.0980]);
plot([firebrand_flux_fuel_60percent],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.9290, 0.6940, 0.1250]);
plot([firebrand_flux_fuel_80percent],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4940, 0.1840, 0.5560]);
plot([firebrand_flux_fuel_Thomas],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4660, 0.6740, 0.1880]);



ylabel('Firebrand flux (psc.m^{-2}.s^{-1})','FontWeight','bold','FontSize',20,...
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
