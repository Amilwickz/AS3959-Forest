clear;
close all;
%AS3959 maximum and average velocity Forest FDI100 BAL 12.5.

Average_velocity = [1.022823917	1.082684833	0.478448723	0.244634094	0.786659172	0.65921093	1.998202352	0.795491982];
Maximum_velocity = [4.674832875	4.289741867	1.852492083	1.1435619	2.982500633	2.2573959	4.358313133	3.10496075];


plot([Average_velocity],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.4660 0.6740 0.1880]);
hold on
plot([Maximum_velocity],'^--','MarkerSize',12,'MarkerEdgeColor','black','MarkerFaceColor',[0.6350 0.0780 0.1840]);
ax = gca;
ax.XTickLabels = {'Roof','Gutter','Sub-floor','Door','Deck','Window','House back','stairs'};

grid on;


box on
xtickangle(45)
xlabel('Location','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
ylabel('Flow velocity (ms^{-1})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('Average flow velocity','Maximum flow velocity')