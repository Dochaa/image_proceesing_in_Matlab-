I = imread('Fig0441(a)(characters_test_pattern).tif');
figure, imshow(I)
D0 = 30;
D1 = 60;
D2 = 160;% Cutoff

PQ = paddedsize(size(I));
[U, V] = dftuv(PQ(1), PQ(2));
F = fft2(I, PQ(1), PQ(2));
D = sqrt(U.^2 + V.^2);

GL =  1-exp((-D.^2) ./ (2* (D0 ^2)));
gGL = dftfilt(I, GL);
figure, imshow(uint8(gGL), []);

GL1 =  1-exp((-D.^2) ./ (2* (D1 ^2)));
gGL1 = dftfilt(I, GL1);
figure, imshow(uint8(gGL1), []);

GL2 =  1-exp((-D.^2) ./ (2* (D2 ^2)));
gGL2 = dftfilt(I, GL2);
figure, imshow(uint8(gGL2), []);

