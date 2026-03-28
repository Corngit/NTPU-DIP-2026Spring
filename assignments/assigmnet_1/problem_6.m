x1 = imread('../assigmnet_1/image/cameraman.png');
x2 = imread('../assigmnet_1/image/emu.png');
x3 = imread('../assigmnet_1/image/caribou.jpg');
x4 = imread('../assigmnet_1/image/gull.jpg');

x5 = im2gray(x2);
figure;
for i = 1:4
    subplot(2,2,i),imshow(imresize(imresize(x1,1/(2^(i+1))),2^(i+1),'nearest'))
end

figure;
for i = 1:4
    subplot(2,2,i),imshow(imresize(imresize(x5,1/(2^(i+1))),2^(i+1),'nearest'))
end

figure;
for i = 1:4
    subplot(2,2,i),imshow(imresize(imresize(x3,1/(2^(i+1))),2^(i+1),'nearest'))
end

figure;
for i = 1:4
    subplot(2,2,i),imshow(imresize(imresize(x4,1/(2^(i+1))),2^(i+1),'nearest'))
end