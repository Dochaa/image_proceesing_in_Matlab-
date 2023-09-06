close all;
clear;
i  = [1 1 1 1 1
      1 2 2 2 1
      1 1 1 1 1 
      1 1 1 2 1
      1 1 1 1 1];
b=[0 1 0
   1 1 1
   0 1 0];  
i1=imdilate(i,b);
figure; imshow(i1);