clear;
close all;
%AS3959 firebrand flux Forest FDI50

Firebrand_flux_BAL12p5 = [0.405563882	0.370545349	0.697180224	0.006267313	0	0.138489007	0	0.055689298	0.308284735];
Firebrand_flux_BAL19 = [0.702516425	0.633005736	1.02373019	0.017671276	0	0.134041625	0	0.192494883	0.760119471];
Firebrand_flux_BAL29 = [1.540735246	1.512155635	3.207050953	0.024595961	0	0.343799758	0	0.326249739	1.957461357];
Firebrand_flux_BAL40 = [2.491220263	2.099013025	3.765136821	0.051414542	0.063487748	1.048037679	0	0.419572405	3.334685931];
Firebrand_flux_BALFZ = [3.663364364	2.969284521	4.02466388	0.116689309	0.220515298	2.314975647	0.096727241	1.098417169	4.326775601];


plot([Firebrand_flux_BAL12p5],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0, 0.4470, 0.7410]);
hold on
plot([Firebrand_flux_BAL19],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.8500, 0.3250, 0.0980]);
plot([Firebrand_flux_BAL29],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.9290, 0.6940, 0.1250]);
plot([Firebrand_flux_BAL40],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4940, 0.1840, 0.5560]);
plot([Firebrand_flux_BALFZ],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4660, 0.6740, 0.1880]);



ax = gca;
ax.XTickLabels = {'House','Roof','Gutter','Sub-floor','Door','Deck','Window','House back','stairs'};
grid on;


box on
xtickangle(45)
xlabel('Location','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
ylabel('Firebrand flux (pcs.m^{-2}.s^{-1})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('BAL 12.5','BAL 19','BAL 29','BAL 40','BAL FZ')