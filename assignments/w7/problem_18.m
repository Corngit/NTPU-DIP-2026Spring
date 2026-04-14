c = imread('../../data/Original_Images_1/cameraman.png');
f2 = [1 -2 1;-2 4 -2;1 -2 1];
cf1 = imfilter(c,f2);
cf2 = imfilter(double(c),f2);

figure, imshow(cf1)
figure, imshow(cf2)
figure, imshow(mat2gray(cf2))
figure, imshow(cf2/60)
