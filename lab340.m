I=imread('Fig0340(a)(dipxe_text).tif');
Iblur=ones(15)/225;
iw=imfilter(I,Iblur);


mark= I-iw;
mark1=double(I)-double(iw);
mark1=mat2gray(mark1);
unsharpM=I + mark;
Hboot=I + (4*mark);


figure,imshow(I);
figure,imshow(iw);
figure,imshow(mark);
figure,imshow(mark1);
figure,imshow(unsharpM);
figure,imshow(Hboot);
