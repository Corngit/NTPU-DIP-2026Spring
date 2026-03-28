c = imread('../../data/Original_Images_1/cameraman.png');
f1 = fspecial("average");
cf1 = imfilter(c,f1);
f2 = fspecial('average',11);
cf2 = imfilter(c,f2);
f3 = fspecial('average',25);
cf3 = imfilter(c,f3);

figure
subplot(2,2,1),imshow(c)
subplot(2,2,2), imshow(cf1), title('Average Filter 3x3');
subplot(2,2,3), imshow(cf2), title('Average Filter 11x11');
subplot(2,2,4), imshow(cf3), title('Average Filter 25x25');