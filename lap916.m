I = imread("Fig0916(a)(region-filling-reflections).tif");
IN =~I;
II = logical(I);
BW2 = bwselect(IN);

ANS = II+BW2;

figure, imshow(I); title('1');
figure, imshow(BW2); title('2');
figure, imshow(ANS); title('3');