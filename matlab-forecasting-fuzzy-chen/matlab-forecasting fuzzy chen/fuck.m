close all
clc
clear

jumlah_u= input('jumlah U: ')

for i=1:jumlah_u
    eval(sprintf('L%d = zeros', i));
    batas_bawwah = input(' masukkan batas bawah');
    batas_atas = input(' masukkan batas atas');
    eval(sprintf('batasU%d = [%d %d]', i, batas_bawah, batas_atas));
end

index_u= (1: jumlah_u);

data_dummy= [6102 9866 9237 11209 12594 7840];