clc;
clear;
close all;

% PATH = [getenv('UserProfile') '\Desktop\'];
PATH = '.\';

data = load('Cell_Si.mat');
lambda = data.lambda;
R = data.R;
P = data.phase_RCPR;
P = flip(rot90(P, 1),2);
fig = figure;
image(lambda/data.nm, R, mat2gray(P), 'CDataMapping', 'scaled');
colormap('jet');
c = colorbar('Ticks', [0, 0.5, 0.99], 'TickLabels', {'-¦Ð','0','¦Ð'}, 'FontSize', 12);
c.Label.String = 'Wrapped Phase (rad.)';
set(gca,'YDir','normal');
xlabel('¦Ë/nm', 'FontSize',14);
ylabel('¦È/degree', 'FontSize',14);
% title('Phase');
print(fig, '-dpng',[PATH 'Cell_Si_Phase.png']); 

A = abs(data.RCPR);
A = flip(rot90(A,1),2);
fig = figure;
image(lambda/data.nm, R, mat2gray(A), 'CDataMapping', 'scaled');
colormap('jet');
c = colorbar('Ticks', [0, 0.5, 0.99], 'TickLabels', {'0','0.5','1'}, 'FontSize', 12);
c.Label.String = 'Normalized intensity (a.u.)';
set(gca,'YDir','normal');
xlabel('¦Ë/nm', 'FontSize',14);
ylabel('¦È/degree', 'FontSize',14);
% title('Amplitude');
print(fig, '-dpng',[PATH 'Cell_Si_Amplitude.png']); 

LP = P(:, 223);
LA = A(:, 223);
fig = figure;
box on;
yyaxis left;
LP = -unwrap(LP);
LP = LP - (min(LP)-(-pi));
plot(R, LP, 'LineWidth', 2, 'Color', 'b');
ylim([-4, 4]);
ylabel('Phase (rad.)', 'FontSize',14);
set(gca,'ycolor','b');
yyaxis right;
plot(R, LA, 'LineWidth', 2, 'LineStyle', '-.', 'Color', 'r');
ylim([0, 1.5]);
ylabel('Transmission Efficiency (a.u.)', 'FontSize',14);
set(gca,'ycolor','r');
xlabel('¦È/degree', 'FontSize',14);
grid on;
print(fig, '-dpng',[PATH 'Cell_Si_PA.png']); 
 