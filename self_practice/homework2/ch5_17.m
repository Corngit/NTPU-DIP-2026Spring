I = im2double(imread('cameraman.png'));
I_geom = I;
I_geom(I_geom==0) = eps;

blockSize = [3 3];
d = 4;

gmean_img = colfilt(I_geom, blockSize, 'sliding', ...
    @(block) exp(mean(log(block), 1)));

atrim_img = colfilt(I, blockSize, 'sliding', ...
    @(block) alpha_trimmed_mean(block, d));

figure;
subplot(1,3,1);
imshow(I, []);
title('Original');

subplot(1,3,2);
imshow(gmean_img, []);
title('Geometric Mean');

subplot(1,3,3);
imshow(atrim_img, []);
title('Alpha-Trimmed Mean');

function y = alpha_trimmed_mean(block, d)
    block = sort(block, 1);
    n = size(block, 1);
    y = mean(block(d/2+1 : n-d/2, :), 1);
end