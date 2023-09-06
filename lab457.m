close all;
I = imread('Fig0457(a)(thumb_print).tif');
figure, imshow(I);

%High_Gaussian
D0=30;
PQ = paddedsize(size(I));
[U, V] = dftuv(PQ(1), PQ(2));
F = fft2(I, PQ(1), PQ(2));
D = sqrt(U.^2 + V.^2);
H_Gauss =  1-exp((-D.^2) ./ (2* (D0 ^2)));
HG_out = dftfilt(I, H_Gauss);
figure, imshow(uint8(HG_out), []);

%High_ButterWorth
D1=30;
n = 2;
PQ = paddedsize(size(I));
[U, V] = dftuv(PQ(1), PQ(2));
F1 = fft2(I, PQ(1), PQ(2));
D = sqrt(U.^2 + V.^2);
HBtw = 1./(1+(D0 ./ D).^(2*n));
gHBtw = dftfilt(I, HBtw);
figure, imshow(uint8(gHBtw), []);

%Threshold
Threshold = HG_out>=11;
figure, imshow((Threshold),[]);
Threshold1 = gHBtw>=11;
figure, imshow((Threshold1),[]);
