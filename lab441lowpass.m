I = imread('Fig0441(a)(characters_test_pattern).tif');
figure, imshow(I)
D0 =30; 
D1 =60;
D2 =160;% Cutoff
PQ = paddedsize(size(I));
[U, V] = dftuv(PQ(1), PQ(2));
F = fft2(I, PQ(1), PQ(2));
D = sqrt(U.^2 + V.^2);
HH = double(D > D0);
HHH = double(D > D1);
HHHH = double(D > D2);
gH = dftfilt(I, HH);
gH2 = dftfilt(I, HHH);
gH3 = dftfilt(I, HHHH);
figure, imshow(uint8(gH), []);
figure, imshow(uint8(gH2), []);
figure, imshow(uint8(gH3), []);

