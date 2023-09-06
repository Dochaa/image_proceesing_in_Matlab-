close all;
clear;

i = imread('Fig1016(a)(building_original).tif');
figure,imshow(i);

r = ones(5)/25;

Sel = imfilter(i,r);
figure, imshow(Sel);
sx = [-1 -2 -1;
        0 0 0;
        1 2 1];
sy = [-1 0 1;
        -2 0 2;
        -1 0 1];

gx = abs(imfilter(im2double(Sel),sx));
figure, imshow(gx);

gy = abs(imfilter(im2double(Sel),sy));
figure, imshow(gy);

gx_gy = gx+gy;
figure, imshow(gx_gy);
