i = imread('Fig0310(b)(washed_out_pollen_image).tif');
Imin = min(min(i));%หาค่า ต่ำสุดจาก ภาพ
Imax = max(max(i));%หาค่า สูงสุดจาก ภาพ
Imean=mean(mean(i));%หาค่าเฉลี่ยของรุปจากฟังชั้น mean

m=255/(Imax-Imin);%ใช้สมการเส้นตรง 
s1=m*(i-Imin);%เอาภาพตั้งต้นไปลบกับค่าต่ำสุดแล้วไป x  กับ ผลลัพธ์ของ M
Ibinary=i>=Imean;
figure,imshow(i);
figure,imshow(s1);
figure,imshow(Ibinary);
%figure,imhist(I);
%figure,imhist(s1);
% สรุป นะจ่ะ คือการทำ low คอนทาศ จะทำให้ภาพชัดขึ้นโดยการทำค่า min max
% จะทำให้ภาพตั้นต้นมืดๆ  สว่างขึ้น นะจ่ะ
