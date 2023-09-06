i = imread("Fig0310(b)(washed_out_pollen_image).tif");
meani = mean(mean(i));
s = (i>meani);
s2
figure, imshow(i)
figure, imshow(s)

