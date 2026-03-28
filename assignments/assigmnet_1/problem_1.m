img = imread('../assigmnet_1/image/backyard.png');

R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
zero = zeros(size(R),'uint8');

[y,map] = rgb2ind(img,10);
imwrite(y, map, 'temp_image.png');       
imfinfo('temp_image.png')
imfinfo('image\backyard.png')
%建立彩色通道圖
red_img   = cat(3, R, zero, zero);
green_img = cat(3, zero, G, zero);
blue_img  = cat(3, zero, zero, B);

figure;
subplot(2,2,1); imshow(img); title('原始影像');
subplot(2,2,2); imshow(red_img); title('紅色通道 (彩色)');
subplot(2,2,3); imshow(green_img); title('綠色通道 (彩色)');
subplot(2,2,4); imshow(blue_img); title('藍色通道 (彩色)');
figure;
subplot(1,2,1); imshow(img); title('原始影像');
subplot(1,2,2); imshow(y,map); title('索引影像');
