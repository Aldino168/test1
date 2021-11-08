clc;clear all;close all;
format shortG
data = load('data.txt');
disp('data');
disp(data);
disp('Mencari Nilai Himpunan Semesta')
d1 = 15
d2 = 18
X=[];

for i=1:length(data)-1
    
    X(i)= abs(data(i+1)-data(i));
    
end
disp(X)
d_min = min(X)
d_max = max(X)
U =[d_min-d1 d_max+d2]
disp('Jumlah Interval')
jumlah_interval = floor(1 + (3.322 * log10(length(data))))
disp('Lebar Interval')
lebar_interval = ((d_max+d2)-(d_min-d1)) / jumlah_interval

a = d_min-d1;
b = (d_min-d1)+lebar_interval;
disp('universe of discourse');
U = [];
for j =1:jumlah_interval    
    nilai_tengah(j) = ceil(mean([a, b]));
    disp(['U' num2str(j) ': ' num2str(round(a)) ' - ' num2str(round(b)) ' nilai tengah A' num2str(j) ': ' num2str(nilai_tengah(j))]);
    U(j,:) = [a,b];
    fuzzy_sets(j) = nilai_tengah(j);
    a = b;
    b = a+lebar_interval;
end
L=[];
L3=[];
L1=[];
L2=[];
for i=1:length(X)
    for j=1:length(U)
        kiri = U(j,1);
        kanan = U(j,2);
        if X(i)>= kiri && X(i) <= kanan
            L(i)= (j);
            if j==1
                L1=[L1,X(i)];
            elseif j==0
                L2=[L2,X(i)];
            else
                L3=[L3,X(i)];
            
            break;
            end
        end
    end          
end
disp(['L1   = ' num2str(L1)]);       
disp(['L2   = ' num2str(L2)]);
disp(['L3   = ' num2str(L3)]);  
numel(L2)

K=[];
for i=1:6
    for j=1:6
        if i==j
            K(i,j)=1;
        elseif i==j+1 | i==j-1
            K(i,j)=0.5;
        else
            K(i,j)=0;
        end
    end
end

K(1,1:end)
K(2,1:end)
K(3,1:end)
K(4,1:end)
K(5,1:end)
K(6,1:end)