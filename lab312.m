r = imread("Fig0312(a)(kidney).tif");
s = r;
s1 = (r>147&r<256);
s2 = (r>80&r<140);
s(s2)=0;
figure, imshow(r)
figure, imshow(s1)
figure, imshow(s)