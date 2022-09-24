clear;
close all;
%AS3959 flame angle all FDIs BALs

FDI100 =[71.452	69.05	63.842	55.206	];
FDI80 = [73.289	71.18	65.82	56.99	];
FDI50 = [76.045	73.655	67.917	59.807	];


plot([FDI100],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0, 0.4470, 0.7410]);
hold on
plot([FDI80],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.8500, 0.3250, 0.0980]);
plot([FDI50],'o--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.9290, 0.6940, 0.1250]);



ylabel('Flame angle (^{0})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');





ax = gca;
ax.XTickLabels = {'12.5','19','29','40'};
grid on;


box on
xtickangle(45)
xlabel('BAL','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('FDI 100','FDI 80','FDI 50')
