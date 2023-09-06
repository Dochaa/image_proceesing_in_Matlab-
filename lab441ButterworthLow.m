I = imread('Fig0441(a)(characters_test_pattern).tif');
figure, imshow(I)
D0 = 10;
D1 =30;
D2 =60;
D3 =160;
D4 =460;% Cutoff
PQ = paddedsize(size(I));
[U, V] = dftuv(PQ(1), PQ(2));
F = fft2(I, PQ(1), PQ(2));
D = sqrt(U.^2 + V.^2);
n = 10;
LBtw = 1./(1+(D / D0).^(2*n));
LBtw2 = 1./(1+(D / D1).^(2*n));
LBtw3 = 1./(1+(D / D2).^(2*n));
LBtw4 = 1./(1+(D / D3).^(2*n));
LBtw5 = 1./(1+(D / D4).^(2*n));
gLBtw = dftfilt(I, LBtw);
gLBtw2 = dftfilt(I, LBtw2);
gLBtw3 = dftfilt(I, LBtw3);
gLBtw4 = dftfilt(I, LBtw4);
gLBtw5 = dftfilt(I, LBtw5);
figure, imshow(gLBtw, []);
figure, imshow(gLBtw2, []);
figure, imshow(gLBtw3, []);
figure, imshow(gLBtw4, []);
figure, imshow(gLBtw5, []);








%figure, imshow(fftshift(LBtw), []);
