close all
clear all
clc
%%read
trees = imread('C:\Users\HP\Downloads\kucing.tif');
figure(1)
imshow(trees)
asci=uint8(trees) %menampilkan matriks citra

%%grayscale convert
gtrees = rgb2gray(trees);
figure(2)
imshow(gtrees)

%%save
imwrite(gtrees, 'C:\Users\HP\Downloads\kucinggray.tif')

%%invert
mintrees = 255 - trees;
figure(3)
imshow(mintrees)

%%crop tool
figure (4)
croptrees = imcrop(trees,[75 68 130 112]);
imshow(croptrees)

%%flip
hztrees = flipdim(trees,2); %horizontal flip
vrtrees = flipdim(trees,1); %vertical flip
hzvrtrees = flipdim(hztrees,1); %vertical and horizontal flip

figure (5)
subplot (2,2,1), imshow(trees)
subplot (2,2,2), imshow(hztrees)
subplot (2,2,3), imshow(vrtrees)
subplot (2,2,4), imshow(hzvrtrees)

%%scaling
figure(6)
bigtrees = imresize(trees,5); %menscale citra menjadi 5 kali skala awal
imshow(bigtrees)

%%rotation
figure(7)
rotrees = imrotate(trees,90); %merotasi citra sebanyak 90 derajat
imshow(rotrees)

%%histogram
figure(8)
imhist(trees)





























