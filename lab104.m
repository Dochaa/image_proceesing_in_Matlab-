close all;
clear;
i = imread('Fig1004(b)(turbine_blade_black_dot).tif');
imshow(i);
r = im2double(i);
%Laplacian
L8 = [1 1 1;
      1 -8 1;
      1 1 1;];
%A
mask = imfilter(r,L8);
figure;imshow(mask);

%B
mask1 = mat2gray(mask);
m = im2uint8(mask1);
b = m >=255;
figure;imshow(b);
