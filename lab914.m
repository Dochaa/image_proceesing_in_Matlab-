close all;
clear;
i = imread("Fig0914(a)(licoln from penny).tif");
imshow(i);
b = ones(5);
k= imerode(i,b);
d = i-k;
figure,imshow(d);
