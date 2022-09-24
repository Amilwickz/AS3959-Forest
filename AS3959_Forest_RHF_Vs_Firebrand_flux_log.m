clear;
close all;
%AS3959 Forest Radiative heat flux vs firebrand flux 

Radiative_heat_flux_FDI100 = [4.39	7.34	15.69	30.24	84.70];
Radiative_heat_flux_FDI80 = [4.98	7.18	16.72	35.47	125.07];
Radiative_heat_flux_FDI50 = [5.28	8.90	19.09	36.54	125.70];

Firebrand_flux_FDI100 = [0.443	0.948	1.668	3.625	5.471];
Firebrand_heat_flux_FDI80 = [0.593	0.923	1.845	3.704	5.478];
Firebrand_heat_flux_FDI50 = [0.406	0.703	1.541	2.491	3.663];

plot(Radiative_heat_flux_FDI100,Firebrand_flux_FDI100,'o','MarkerSize',10,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[0 0.4470 0.7410],'displayname','FDI 100')
hold on
plot(Radiative_heat_flux_FDI80,Firebrand_heat_flux_FDI80,'o','MarkerSize',10,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[0.8500 0.3250 0.0980],'displayname','FDI 80')
plot(Radiative_heat_flux_FDI50,Firebrand_heat_flux_FDI50,'o','MarkerSize',10,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[0.4660 0.6740 0.1880],'displayname','FDI 50')







legend
grid on
box on
xlabel('Radiative heat flux (kW.m^{-1})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
ylabel('Firebrand flux (pcs.m^{-2}s{-1})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
set(gca,'fontsize',18);




set(gca,'fontsize',18);

legend('FDI 100','FDI 80','FDI 50')
