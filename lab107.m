close all;
clear;
i = imread('Fig1005(a)(wirebond_mask).tif');
figure,imshow(i);
r =im2double(i);
L45 = [4 -2 -2
      -2 4 -2
      -2 -2 2];
mask = imfilter(r,L45);
figure;imshow(mask,[]);
mask1=max(mask,0);
figure,imshow(mask1);
mask2= mask1 >=3;
mask3= mask1 >=5;
figure,imshow(mask2);
figure,imshow(mask3);