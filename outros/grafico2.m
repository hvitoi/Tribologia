clc; clear all; close all;

T1=xlsread('massa.xlsx', 1, 'E4:E6');
T2=xlsread('massa.xlsx', 1, 'E11:E13');
T3=xlsread('massa.xlsx', 1, 'E18:E20');
T4=xlsread('massa.xlsx', 1, 'E25:E27');
T=[mean(T1) mean(T2) mean(T3) mean(T4)];
desv=[std(T1) std(T2) std(T3) std(T4)];
L=[1 2 3 4];

scatter(L(:,1), T(:,1), 150, 'filled', 'o');
hold on;
grid on
scatter(L(:,2), T(:,2), 150, 'filled', 's');
scatter(L(:,3), T(:,3), 150, 'filled', 'd');
scatter(L(:,4), T(:,4), 150, 'filled', 'h');


e = errorbar(L, T, desv, 'vertical', '.');
e.Color = 'black';

text(L(1),T(1),'39,9 HRC', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','bottom');
text(L(2),T(2),'39,6 HRC', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','bottom');
text(L(3),T(3),'40,5 HRC', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','bottom');
text(L(4),T(4),'36,9 HRC', 'FontSize', 10, 'FontWeight', 'bold', 'VerticalAlignment','bottom');


%Configuracoes do plot
axis([0 5 0 0.0015]);
xticks([1 2 3 4])
%xlim([0 5])
%set(gca,'XTickLabel',{'100 ms';'150 ms';'200 ms'});
title('Desgaste das amostras');
xlabel('Amostra');
ylabel('Taxa de Desgaste (g.h/m)');
legend({'Perlita 1','Perlita 2','Bainita 1', 'Bainita 2'},'Location','northeast')



