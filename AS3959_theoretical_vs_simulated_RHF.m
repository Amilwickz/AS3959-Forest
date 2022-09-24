clear;
close all;
%AS3959 theoretical and simulated radiative heat flux comparison .

Theoretical_RHF_FFDI100 = [2.02 4.28 16.4 30.01 68.58];
Theoretical_RHF_FFDI80 = [3.92 6.12 17.31 31.29 68.81];
Theoretical_RHF_FFDI50 = [4.96 9.90 19.58 30.65 68.81];

Simulated_RHF_FFDI100 = [4.39	7.34	15.69	30.24	84.70];
Simulated_RHF_FFDI80 = [4.98	7.18	16.72	35.47	125.07];
Simulated_RHF_FFDI50 = [5.28	8.90	19.09	36.54	125.70];

x = [0:5:150];
y = x;
plot(x, y)

hold on;
plot(Theoretical_RHF_FFDI100,Simulated_RHF_FFDI100,'o','MarkerSize',11,'MarkerEdgeColor','black','MarkerFaceColor',[1 .6 .9]);
plot(Theoretical_RHF_FFDI80,Simulated_RHF_FFDI80,'o','MarkerSize',11,'MarkerEdgeColor','black','MarkerFaceColor',[1 .5 0]);
plot(Theoretical_RHF_FFDI50,Simulated_RHF_FFDI50,'o','MarkerSize',11,'MarkerEdgeColor','black','MarkerFaceColor',[1 .1 .3]);



grid on;


box on
xtickangle(0)
xlabel('Theoretical radiative heat flux (kWm^{-2})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');
ylabel('FDS radiative heat flux (kWm^{-2})','FontWeight','bold','FontSize',20,...
    'FontName','Calibri');

set(gca,'fontsize',18);

legend('y=x','FDI 100','FDI 80','FDI 50')