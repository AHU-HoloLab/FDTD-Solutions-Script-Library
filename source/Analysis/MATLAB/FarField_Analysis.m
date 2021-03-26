clc;
clear;
close all;

PATH = [getenv('UserProfile') '\Desktop\'];

data = load('.\f=100um_Zg=40um\Hologram_Axilens_f=100um_Zg=40um_[FarField]_Z=120nm.mat');
A = rot90(flip(data.RCP),1);
A = rescale(squeeze(abs(A)));
fig = figure;
image(data.x/data.um, data.y/data.um, A, 'CDataMapping', 'scaled');
colormap('jet');
c = colorbar;
c.Label.String = 'Normalized intensity (a.u.)';
c.Label.FontSize = 12;
set(gca,'YDir','normal');
xlabel('x/¦Ìm', 'FontSize',14);
ylabel('y/¦Ìm', 'FontSize',14);
print(fig, '-dpng',[PATH 'Hologram_Axilens_f=100um_Zg=40um_[FarField]_Z=120nm.png']);
