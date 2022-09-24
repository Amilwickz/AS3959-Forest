clear;
close all;
%AS3959 firebrand flux Forest FDI80

Firebrand_flux_BAL12p5 = [0.593260309	0.528132596	0.96759109	0.023497675	0	0.169745094	0	0.115022842	0.593642628];
Firebrand_flux_BAL19 = [0.923430195	0.950884473	1.71381427	0.019139973	0	0.197228221	0	0.129165515	0.646054811];
Firebrand_flux_BAL29 = [1.844660432	1.728889684	2.866178231	0.03966256	0	0.480336338	0	0.278873725	1.845629821];
Firebrand_flux_BAL40 = [3.704399381	3.381064967	5.034410441	0.069489459	0.037058872	0.778865818	0	0.670716466	4.188225862];
Firebrand_flux_BALFZ = [5.477999488	4.611970707	5.039193822	0.221337938	0.43125035	3.836539806	0.180675784	1.940415426	7.313829821];


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