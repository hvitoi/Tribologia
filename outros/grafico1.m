clc; clear all; close all;

T1=xlsread('massa.xlsx', 1, 'E4:E6');
T2=xlsread('massa.xlsx', 1, 'E11:E13');
T3=xlsread('massa.xlsx', 1, 'E18:E20');
T4=xlsread('massa.xlsx', 1, 'E25:E27');
T=[T1 T2 T3 T4];
L=[1 2 3 4; 1 2 3 4; 1 2 3 4];

scatter(L(:,1), T(:,1), 100, 'filled', 'o');
hold on;
grid on
scatter(L(:,2), T(:,2), 100, 'filled', 's');
scatter(L(:,3), T(:,3), 100, 'filled', 'd');
scatter(L(:,4), T(:,4), 100, 'filled', 'h');
%Plota os pontos no grafico
%plot(L, T(1,:), '-o',...
%    L, T(2,:),'-s',...
%    L, T(3,:), '-d',...
 %   L, T(4,:), '-^',...
 %   'LineWidth',2, 'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63], 'MarkerSize',6); 

%text(L(1),T(1,1),'0.3384', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','top');
%text(L(2),T(1,2),'0.4992', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','top');
%text(L(3),T(1,3),'0.5415', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','top');

%text(L(1),T(2,1),'0.3740', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','bottom', 'HorizontalAlignment', 'right');
%text(L(2),T(2,2),'0.5567', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','bottom', 'HorizontalAlignment', 'right');
%text(L(3),T(2,3),'0.6431', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','bottom', 'HorizontalAlignment', 'right');

%text(L(1),T(3,1),'1.506', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','top');
%text(L(2),T(3,2),'1.912', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','top');
%text(L(3),T(3,3),'2.403', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','top');

%text(L(1),T(4,1),'1.625', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','bottom', 'HorizontalAlignment', 'right');
%text(L(2),T(4,2),'1.997', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','bottom', 'HorizontalAlignment', 'right');
%text(L(3),T(4,3),'2.606', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','bottom', 'HorizontalAlignment', 'right');




%Configuracoes do plot
axis([0 5 0 0.0015]);
xticks([1 2 3 4])
%xlim([0 5])
%set(gca,'XTickLabel',{'100 ms';'150 ms';'200 ms'});
title('Desgaste das amostras');
xlabel('Amostra');
ylabel('Taxa de Desgaste (g.h/m)');
legend({'Perlita 1','Perlita 2','Bainita 1', 'Bainita 2'},'Location','northeast')



