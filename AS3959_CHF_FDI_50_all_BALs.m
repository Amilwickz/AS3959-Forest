clear;
close all;
%AS3959 average Convective heat flux Forest FDI50 

Convective_heat_flux_BAL12p5 = [0.010790075	0.03509672	0.00356396	0.014277229	0.015361294	0.030748435	0.001833474	0.01701215];
Convective_heat_flux_BAL19 = [0.050245266	0.093824912	0.004295757	0.013879674	0.016762732	0.019833345	0.001997706	0.019930168];
Convective_heat_flux_BAL29 = [0.084784275	0.117379169	0.008670839	0.029785447	0.025532533	0.046963805	0.002361575	0.052279892];
Convective_heat_flux_BAL40 = [0.362625025	1.867088187	0.012665585	0.088578348	0.047218262	0.25560383	0.005893157	0.062477541];
Convective_heat_flux_FZ = [1.847068925	9.5243289	1.92475957	4.493519	9.4280065	8.9902613	0.022595772	2.6798884];


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
