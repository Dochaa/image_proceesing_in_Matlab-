close all;
clear;
i = imread('Fig1016(a)(building_original).tif');
sx = [-1 -2 -1;
       0 0 0;
       1 2 1];

sy = [-1 0 1;
      -2 0 2;
      -1 0 1];

gx = abs(imfilter(im2double(i),sx));
gy = abs(imfilter(im2double(i),sy));
gx_gy = gx+gy;
thres_33 = (33/100)*max(max(gx_gy));
thres = gx_gy > 1.25;
figure; imshow(im2double(thres));


kernel = ones(5)/25;
smooth = imfilter(i,kernel);
gx2 = abs(imfilter(im2double(smooth),sx));
gy2 = abs(imfilter(im2double(smooth),sy));
gx_gy2 = gx2+gy2;

thres2_33 = (33/100)*max(max(gx_gy2));
thres2 = gx_gy2 > 0.6034;
figure; imshow(im2double(thres2));

