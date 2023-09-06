

i = imread('Fig1016(a)(building_original).tif');
figure,imshow(i);

sx = [-1 -2 -1;
       0 0 0;
       1 2 1];

sy = [-1 0 1;
      -2 0 2;
      -1 0 1];

gx = abs(imfilter(im2double(i),sx));
figure, imshow(gx);

gy = abs(imfilter(im2double(i),sy));
figure, imshow(gy);

gx_gy = gx+gy;
figure, imshow(im2double(gx_gy));
