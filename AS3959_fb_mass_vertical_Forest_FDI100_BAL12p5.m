clear;
close all;
%AS3959 firebrand mass flux vertical distribution Forest FDI100 BAL 12.5.

Firebrand_flux = [163.07	130.00	96.78	75.12	62.83	70.75	45.74	36.59	28.28];


plot([Firebrand_flux],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0 1 0]);

ax = gca;
ax.XTickLabels = {'x=130 m','x=140 m','x=150 m','x=160 m','x=170 m','x=180 m','x=190 m','x=200 m','x=210 m'};

grid on;


box on
xtickangle(45)
xlabel('Vertical plane location','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
ylabel('Firebrand mass flux (kg.s^{-1})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('Firebrand mass flux through vertical planes')
