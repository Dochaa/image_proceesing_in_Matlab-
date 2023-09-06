close all;
clear;
I = imread("Fig0425(a)(translated_rectangle).tif");
figure,imshow(I);
F=fft2(I);
%figure,imshow(abs(F),[]);
F5 = fftshift(F);
%figure,imshow(abs(F5),[]);
s2=log(1+abs(F5));
figure,imshow(s2,[]);
% เปลี่ยนองศา 45
bilin= imrotate(I,-45,'bilinear');
figure,imshow(bilin);
F2=fft2(bilin);
%figure,imshow(abs(F2),[]);
F52 = fftshift(F2);
%figure,imshow(abs(F52),[]);
s22=log(1+abs(F52));
figure,imshow(s22,[]);
