clear;
close all;
%AS3959 average Convective heat flux Forest FDI100 

Convective_heat_flux_BAL12p5 = [0.118114813	0.074970313	0.018155683	0.012154626	0.052419703	0.039048942	0.030788951	0.03068313];
Convective_heat_flux_BAL19 = [0.097844033	0.13183849	0.01229888	0.012745286	0.028857074	0.037183242	0.038146119	0.052466453];
Convective_heat_flux_BAL29 = [0.169185203	0.19064447	0.025216253	0.039250624	0.075946661	0.044552679	0.079793536	0.101617514];
Convective_heat_flux_BAL40 = [0.1901203	0.174312003	0.022231643	0.039028113	0.062411701	0.077159468	0.012916294	0.081565488];
Convective_heat_flux_FZ = [0.62372475	1.3013077	0.218984993	0.45701171	1.721891683	0.51216924	0.022859171	0.338431115];


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
