t = imread('../assigmnet_1/image/caribou.jpg');
[x,map] = gray2ind(t);

x1 = histeq(x);
x2 = histeq(x1);
figure;
subplot(2,2,1); imshow(t); title('原始影像');
subplot(2,2,2); imshow(x,map); title('索引影像');
subplot(2,2,3); imshow(x1); title('一次直方圖等化');
subplot(2,2,4); imshow(x2); title('二次直方圖等化');