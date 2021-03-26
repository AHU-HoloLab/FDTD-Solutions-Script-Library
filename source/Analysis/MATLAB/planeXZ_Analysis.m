clc;
clear;
close all;

PATH = [getenv('UserProfile') '\Desktop\'];

data = load(['./f=060um_Zg=20um/' 'DOE_Lens_f=60um_Si_[planeXZ-Analysis].mat']);
A = rescale(squeeze(abs(data.RCP)));
fig = figure;
image(data.z/data.um, data.x/data.um, A, 'CDataMapping', 'scaled');
colormap('jet');
c = colorbar;
c.Label.String = 'Normalized intensity (a.u.)';
c.Label.FontSize = 12;
set(gca,'YDir','normal');
xlabel('z/¦Ìm', 'FontSize',14);
ylabel('x/¦Ìm', 'FontSize',14);
print(fig, '-dpng',[PATH 'DOE_Lens_f=60um_Si_[planeXZ-Analysis].png']); 

% data = load('DOE_Axilens_f=60um_Zg=20um_[planeXZ-Analysis].mat');
% PATH = [getenv('UserProfile') '\Desktop\'];
% A = rescale(squeeze(abs(data.RCP)));
% fig = figure;
% image(data.z/data.um, data.x/data.um, A, 'CDataMapping', 'scaled');
% colormap('jet');
% c = colorbar;
% c.Label.String = 'Normalized intensity (a.u.)';
% c.Label.FontSize = 12;
% set(gca,'YDir','normal');
% xlabel('z/¦Ìm', 'FontSize',14);
% ylabel('x/¦Ìm', 'FontSize',14);
% print(fig, '-dpng',[PATH 'DOE_Axilens_f=60um_Zg=20um_[planeXZ-Analysis].png']); 
% 
% data = load('DOE_Lens_f=60um_[planeXZ-Analysis].mat');
% PATH = [getenv('UserProfile') '\Desktop\'];
% A = rescale(squeeze(abs(data.RCP)));
% fig = figure;
% image(data.z/data.um, data.x/data.um, A, 'CDataMapping', 'scaled');
% colormap('jet');
% c = colorbar;
% c.Label.String = 'Normalized intensity (a.u.)';
% c.Label.FontSize = 12;
% set(gca,'YDir','normal');
% xlabel('z/¦Ìm', 'FontSize',14);
% ylabel('x/¦Ìm', 'FontSize',14);
% print(fig, '-dpng',[PATH 'DOE_Lens_f=60um_[planeXZ-Analysis].png']); 
