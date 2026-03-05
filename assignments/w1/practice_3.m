img = imread('../../data/Original_Images_1/lenna.png');
gray = rgb2gray(img);

subplot(2,1,1);
imshow(img);
title('Original');
subplot(2,1,2);
imshow(gray);
title('Gray');

