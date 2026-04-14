k = imread('../../data/Original_Images_1/koala.png');
id = [0 0 0;0 1 0;0 0 0];
f = fspecial('average');
u = 3*id - 2*f;
ku = imfilter(k,u);

figure, imshow(k)
figure, imshow(ku)