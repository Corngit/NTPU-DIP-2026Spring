a = imread('../assigmnet_1/image/gull.jpg');
a_gray = uint8(floor(double(a)/32) * 32);
a_gray_2 = uint8(floor(double(a)/64) * 64);

D = [0 128;192 64];
r = repmat(D,128,128);
x2 = a_gray>r;

D2_1 = [0 128 32 160;192 64 224 96;48 176 16 144;240 112 208 80];
r2 = repmat(D2_1,64,64);
x4 = a_gray>r2;

D = [0 128;192 64];
r = repmat(D,128,128);
x6 = a_gray_2>r;

D2_2 = [0 128 32 160;192 64 224 96;48 176 16 144;240 112 208 80];
r2 = repmat(D2_2,64,64);
x8 = a_gray_2>r2;

figure;
imshow(a_gray)
figure;
subplot(2,2,1),imshow(x2);
subplot(2,2,2),imshow(x4);
subplot(2,2,3), imshow(x6);
subplot(2,2,4), imshow(x8);