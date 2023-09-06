Fig04 = imread("Fig0424(a)(rectangle).tif");
figure,imshow(Fig04);
Fig041=fft2(Fig04);
spec = abs(Fig041);
figure,imshow(spec,[]);
fc = fftshift(Fig041);
figure,imshow(abs(fc),[]);
s2=log(1+abs(fc));
figure,imshow(s2,[]); 
phase2 = angle(Fig041);
figure,imshow(phase2,[]);
Fig0 = imread('Fig0425(a)(translated_rectangle).tif');
figure,imshow(Fig0);
Fig04 = imrotate(Fig0,-45,'bilinear');
figure,imshow(Fig04);
Fig042=fft2(Fig04);
I = fft2(Fig0);
I2 = abs(I);
figure,imshow(I2,[]);
spec1 = abs(Fig042);
figure,imshow(spec1,[]);
fc = fftshift(Fig042);
figure,imshow(abs(fc),[]);
s2=log(1+abs(fc));
figure,imshow(s2,[]);
phase3 = angle(Fig042);
figure,imshow(phase3,[]);
phase1 = angle(I);
figure,imshow(phase1,[]);
