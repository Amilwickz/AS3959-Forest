%Sensitivity analysis fireline location forest FDI 100, 80


%1s
gap_distance_FDI100 = [0 5 8 10]; 
gap_distance_FDI80 = [0 5 10 12 15];
gap_distance_FDI50 = [0 5 10 12];

RHF_FDI100=[62.39	46.89	45.3	29.07];
RHF_FDI80=[178.95	83.1	39.64	27.04	19.8];
RHF_FDI50=[202.41	129.85	47.49	29.21];



plot(gap_distance_FDI100,RHF_FDI100,'o--','LineWidth',1,'MarkerSize',8,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[0.9290, 0.6940, 0.1250]);

hold on
plot(gap_distance_FDI80,RHF_FDI80,'o--','LineWidth',1,'MarkerSize',8,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[0 0.4470 0.7410]);

plot(gap_distance_FDI50,RHF_FDI50,'o--','LineWidth',1,'MarkerSize',8,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[0.4940, 0.1840, 0.5560]);



%x=3;
%y=0:1:22; 
%plot(x, y, 'LineWidth', 10) 

grid on
box on


xlabel('Distance between the fire front and edge of the forest (m)','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
ylabel('Maximum radiative heat flux (kW.m^{-2})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('FDI 100 BAL40','FDI 80 BAL40', 'FDI 50 BAL40')

