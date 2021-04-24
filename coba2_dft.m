clear all
clc

x=[10 50 30; 30 10 30; 40 30 50];

ffx=(fft2(x))

imshow(abs(ffx))