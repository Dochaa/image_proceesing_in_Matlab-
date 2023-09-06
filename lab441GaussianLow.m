I = imread('Fig0441(a)(characters_test_pattern).tif');
figure, imshow(I)
D0 = 10; 
D1 = 30;
D2 = 60;
D3 = 160;
D4 = 480;% Cutoff
PQ = paddedsize(size(I));
[U, V] = dftuv(PQ(1), PQ(2));
F = fft2(I, PQ(1), PQ(2));
D = sqrt(U.^2 + V.^2);
GL1 = exp((-D.^2) ./ (2* (D0^2)));
gGL1 = dftfilt(I, GL1);
figure, imshow(gGL1, []);

GL2 = exp((-D.^2) ./ (2* (D1^2)));
gGL2 = dftfilt(I, GL2);
figure, imshow(gGL2, []);

GL3 = exp((-D.^2) ./ (2* (D2 ^2)));
gGL3 = dftfilt(I, GL3);
figure, imshow(gGL3, []);

GL4  = exp((-D.^2) ./ (2* (D3^2)));
gGL4 = dftfilt(I, GL4);
figure, imshow(gGL4, []);

GL5 = exp((-D.^2) ./ (2* (D4^2)));
gGL5 = dftfilt(I, GL5);
figure, imshow(gGL5, []); 

