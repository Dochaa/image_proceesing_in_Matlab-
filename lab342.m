I=imread('Fig0342(a)(contact_lens_original).tif');
Sx=[-1 -1;1 1];
gx= imfilter(I,Sx);
Sy = [0 -1;1 0];
gy= imfilter(I,Sy);
G = abs(gx)+abs(gy);

figure,imshow(I);
figure,imshow(gx);
figure,imshow(gy);
figure,imshow(G);

