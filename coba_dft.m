clear all
clc
x = ([10 50 30 ; 30 10 30 ; 40 30 50]); %matriks
n = length(x); %panjang data
y = x*dftmtx(n) %perhitungan dft
imshow(abs(y)) %menampilkan hasil