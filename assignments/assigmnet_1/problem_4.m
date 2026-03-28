img1 = imread('../assigmnet_1/image/cameraman.png');
img2 = imread('../assigmnet_1/image/emu.png');
img3 = imread('../assigmnet_1/image/caribou.jpg');
img4 = imread('../assigmnet_1/image/gull.jpg');

x1 = grayslice(img1,32);
x2 = grayslice(img2,200);
x3 = grayslice(img3,32);
x4 = grayslice(img4,32);

figure;
subplot(2,2,1); imshow(x1); title('1');
subplot(2,2,2); imshow(x2); title('2');
subplot(2,2,3); imshow(x3); title('3');
subplot(2,2,4); imshow(x4); title('4');