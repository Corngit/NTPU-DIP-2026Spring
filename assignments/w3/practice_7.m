c = imread('../../data/Original_Images_1/caribou.jpg');
cd = double(c);
cd2 = double(cd/255);

figure, imshow(cd2), impixelinfo
figure, imshow(c), impixelinfo
figure, imshow(cd), impixelinfo
