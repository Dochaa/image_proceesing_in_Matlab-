I=imread('Fig0338(a)(blurry_moon).tif');
figure,imshow(I);
impixelinfo
%laplacian
L4=[0 1 0;1 -4 1;0 1 0];
L8=[1 1 1;1 -8 1;1 1 1];
I1=im2double(I);
%G4
G4= imfilter(I1,L4);  
figure,imshow(G4);
impixelinfo
%G42กำหนดขอบรูป
G42=imfilter(I1,L4);
figure,imshow(G42,[]);
impixelinfo
%G43
G43=I1-G42;
figure,imshow(G43);
impixelinfo
%G8
G8= imfilter(I1,L8);   
figure,imshow(G8);
impixelinfo
%G82กำหนดขอบรูป
G82=imfilter(I1,L8);
figure,imshow(G82,[]);
impixelinfo
%G83
G83=I1-G82;
figure,imshow(G83);
impixelinfo












