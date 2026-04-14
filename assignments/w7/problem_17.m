c = imread('../../data/Original_Images_1/cameraman.png');
f1 = fspecial("laplacian");
cf1 = imfilter(c,f1,"symmetric");
f2 = fspecial('log');
cf2 = imfilter(c,f2,"symmetric");


figure
subplot(1,3,1),imshow(c)
subplot(1,3,2), imshow(cf1)
subplot(1,3,3), imshow(cf2)
