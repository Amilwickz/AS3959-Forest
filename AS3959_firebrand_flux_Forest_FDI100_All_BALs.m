clear;
close all;
%AS3959 firebrand flux Forest FDI100 

Firebrand_flux_BAL12p5 = [0.44337586	0.408687401	0.65488149	0.013361135	0	0.06143208	0	0.089049508	0.316544784];
Firebrand_flux_BAL19 = [0.947558088	0.860677565	1.581028593	0.026801518	0	0.161571505	0	0.228802827	0.994678868];
Firebrand_flux_BAL29 = [1.667607732	1.684809757	2.486108499	0.032582103	0	0.324047397	0	0.426253384	2.405691087];
Firebrand_flux_BAL40 = [3.625086932	3.31764171	6.740655739	0.076670255	0	0.555867815	0	0.872906489	4.245108966];
Firebrand_flux_BALFZ = [5.47135333	4.692621664	5.774326607	0.17359538	0	3.808362383	0.021170802	2.052998932	6.296507914];


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