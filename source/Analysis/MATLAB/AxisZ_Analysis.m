clc;
clear;
close all;

data = load('DOE_Axicon_Zg=20um_[AxisZ-Analysis].mat');

A = rescale(squeeze(data.ERCP));
fig = figure;
plot(data.z/data.um, A, 'LineWidth',2);
title('');
xlabel('z/¦Ìm');
ylabel('Normalized intensity(a.u.)');
ylim([0, 1.2])
print(fig, '-dpng',[getenv('UserProfile') '\Desktop\' 'DOE_Axicon_Zg=20um_[AxisZ-Analysis].png']); 

data = load('DOE_Axilens_f=60um_Zg=20um_[AxisZ-Analysis].mat');

A = rescale(squeeze(data.ERCP));
fig = figure;
plot(data.z/data.um, A, 'LineWidth',2);
title('');
xlabel('z/¦Ìm');
ylabel('Normalized intensity(a.u.)');
ylim([0, 1.2])
print(fig,'-dpng',[getenv('UserProfile') '\Desktop\' 'DOE_Axilens_f=60um_Zg=20um_[AxisZ-Analysis].png']); 

data = load('DOE_Lens_f=60um_[AxisZ-Analysis].mat');

A = rescale(squeeze(data.ERCP));
fig = figure;
plot(data.z/data.um, A, 'LineWidth',2);
title('');
xlabel('z/¦Ìm');
ylabel('Normalized intensity(a.u.)');
ylim([0, 1.2])
print(fig,'-dpng',[getenv('UserProfile') '\Desktop\' 'DOE_Lens_f=60um_[AxisZ-Analysis].png']); 
