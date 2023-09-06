close all;
clear;

i = imread('Fig1005(a)(wirebond_mask).tif');
figure,imshow(i);

%Laplacian
r = im2double(i);
L8 = [1 1 1;
      1 -8 1;
      1 1 1;];

mask = imfilter(r,L8);
figure;imshow(mask,[]);

ab = abs(mask);
figure;imshow(ab);

figure;imshow(mask);

