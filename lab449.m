I =imread('Fig0419(a)(text_gaps_of_1_and_2_pixels).tif');
figure, imshow(I);

D0=155; %cutoff
PQ = paddedsize(size(I));
[U,V]=dftuv(PQ(1), PQ(2));
D = sqrt(U.^2+V.^2);
title('original')
L_Gauss=exp((-D.^2)/(2*D0^2));
L_Gauss_out=dftfilt(I,L_Gauss);
figure, imshow((L_Gauss_out),[]);
title( ' processed Img ( Gaussian Low-Pass Filtering ) ' );
