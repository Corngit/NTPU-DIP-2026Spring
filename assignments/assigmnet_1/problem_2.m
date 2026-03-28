b = imread('../assigmnet_1/image/blocks.jpg');

b2 = (b/64)*64;
b3 = (b/32)*32;
b4 = (b/16)*16;

figure;
subplot(1,2,1); imshow(b); title('原始影像');
subplot(1,2,2); imshow(b2); title('結果影像(64)');
figure;
subplot(1,3,1); imshow(b); title('原始影像');
subplot(1,3,2); imshow(b3); title('結果影像(32)');
subplot(1,3,3); imshow(b4); title('結果影像(16)');