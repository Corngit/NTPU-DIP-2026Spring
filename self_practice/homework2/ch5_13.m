clc; clear; close all;

c = imread("car.png");

h = ones(3,3) / 9;
H = conv2(h, h);   % 等效 5x5 filter

% 方法 1：做兩次 3x3 average
R1 = imfilter(c, h, 0, 'same');
R1 = imfilter(R1, h, 0, 'same');

% 方法 2：直接做一次等效 5x5 filter
R2 = imfilter(c, H, 0, 'same');

figure;
subplot(1,3,1); imshow(c, []);  title('Original');
subplot(1,3,2); imshow(R1, []); title('Two 3x3 averaging filters');
subplot(1,3,3); imshow(R2, []); title('Equivalent 5x5 filter');

