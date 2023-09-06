I = imread("Fig0424(a)(rectangle).tif");
figure,imshow(I);
F=fft2(I);
spec = abs(F);
figure,imshow(spec,[]);
F5 = fftshift(F);
figure,imshow(abs(F5),[]);
s2=log(1+abs(F5));
figure,imshow(s2,[]);
