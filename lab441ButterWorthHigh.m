I = imread('Fig0441(a)(characters_test_pattern).tif');
figure, imshow(I)
D0 = 30;
D1 =60;
D2 =160;% Cutoff
PQ = paddedsize(size(I));
[U, V] = dftuv(PQ(1), PQ(2));
F = fft2(I, PQ(1), PQ(2));
D = sqrt(U.^2 + V.^2);
 
%% Butterworth High pass
n = 2;
HBtw = 1./(1+(D0 ./ D).^(2*n));
HBtw2 = 1./(1+(D1 ./ D).^(2*n));
HBtw3 = 1./(1+(D2 ./ D).^(2*n));
gHBtw = dftfilt(I, HBtw);
gHBtw2 = dftfilt(I, HBtw2);
gHBtw3 = dftfilt(I, HBtw3);
figure, imshow(uint8(gHBtw), []);
figure, imshow(uint8(gHBtw2), []);
figure, imshow(uint8(gHBtw3), []);