clc; clear; close all;

c= imread("car.png");

%直接 3x3 median filter
R1 = medfilt2(c, [3 3], 'zeros');

%先 3x1，再 1x3
R2 = medfilt2(c, [3 1], 'zeros');
R2 = medfilt2(R2, [1 3], 'zeros');

figure;
subplot(1,3,1); imshow(c, []);  title('Original');
subplot(1,3,2); imshow(R1, []); title('Direct 3x3 median');
subplot(1,3,3); imshow(R2, []); title('3x1 then 1x3 median');