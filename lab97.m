close all;
clear;
i=imread('Fig0907(a)(text_gaps_1_and_2_pixels).tif');
figure; imshow(i);
c=[1 1
   1 1]; 
b=[1 1 1
   1 1 1
   1 1 1];  
i1=imdilate(i,b);
%i2=imerode(i1,c);
figure; imshow(i1);
%figure; imshow(i2);
