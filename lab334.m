i=imread('Fig0334(a)(hubble-original).tif');
figure,imshow(i);
w=ones(15)/225;
iw=imfilter(i,w);
figure,imshow(iw);
imbin=iw>100;
figure,imshow(imbin);