clear;
close all;
%AS3959 firebrand number density Forest FDI100 BAL 12.5.

Firebrand_number_density = [28.82381146	26.56224934	40.60125745	0.73492014	0	3.501684436	0	4.541046731	15.82892004];


plot([Firebrand_number_density],'o','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[1 0.6 0.6]);

ax = gca;
ax.XTickLabels = {'House','Roof','Gutter','Sub-floor','Door','Deck','Window','House back','stairs'};
grid on;


box on
xtickangle(45)
xlabel('Location','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
ylabel('Firebrand number density (pcs.m^{-2})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('Firebrand number density on strategic locations')