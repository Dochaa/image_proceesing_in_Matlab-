close all;
clear;
I = imread("Fig0918(a)(Chickenfilet with bones).tif");

S1 = I>= 204;
Rel = ones(5);
S2 = imerode(S1,Rel);
figure, imshow(I)
figure, imshow(S1)
figure, imshow(S2)

S3 = bwconncomp(S2);