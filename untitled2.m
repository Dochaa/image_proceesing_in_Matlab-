i = imread("Fig0310(b)(washed_out_pollen_image).tif");
r = imread("Fig0312(a)(kidney).tif");
s = r;
s1 = (r>130&r<255);
s2 = (r>80&r<140);
s(s2)=0;
figure, imshow(r)
figure, imshow(s)
figure, imshow(s1)