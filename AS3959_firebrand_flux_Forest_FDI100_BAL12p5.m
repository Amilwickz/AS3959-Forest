clear;
close all;
%AS3959 firebrand flux Forest FDI100 BAL 12.5.

Firebrand_flux = [0.44337586	0.408687401	0.65488149	0.013361135	0	0.06143208	0	0.089049508	0.316544784];


plot([Firebrand_flux],'o','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4660 0.6740 0.1880]);

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

legend('Firebrand flux on strategic locations')