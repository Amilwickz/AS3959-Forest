clear;
close all;
%AS3959 firebrand mass flux horizontal distribution Forest FDI100 BAL 12.5.

Average_Temperature = [39.81267346	40.2828361	39.46329178	40.38423583	40.1071349	40.44086404	39.25723965	40.21090352];
Maximum_Temperature = [51.6980285	50.47042667	43.60383867	44.315886	47.23622133	47.479724	46.322212	47.232746];


plot([Average_Temperature],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4660 0.6740 0.1880]);
hold on
plot([Maximum_Temperature],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.6350 0.0780 0.1840]);
ax = gca;
ax.XTickLabels = {'Roof','Gutter','Sub-floor','Door','Deck','Window','House back','stairs'};

grid on;


box on
xtickangle(45)
xlabel('Location','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
ylabel('Temperature (^{\circ}C)','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('Average temperature','Maximum emperature')