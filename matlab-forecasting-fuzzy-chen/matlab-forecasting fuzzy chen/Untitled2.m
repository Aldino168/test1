clc;clear all;close all;
format shortG
data = load('data.txt');
disp('data');
disp(data);
disp('Mencari Nilai Himpunan Semesta')
d1 = 0
d2 = 4
d_min = min(data)
d_max = max(data)
U =[d_min-d1 d_max+d2]
disp('Jumlah Interval')

jumlah_interval = 6:3:12
    

lebar_interval = [];

for i=1:length(jumlah_interval)
    lebar_interval(i)=ceil((d_max-d_min) / jumlah_interval(i));
end
disp(lebar_interval)
a = d_min-d1;
b=[];
for i=1:length(lebar_interval)
    b(i)= d_min+lebar_interval(i)
end



