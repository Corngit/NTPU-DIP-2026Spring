c = imread("car.png");

cmax = ordfilt2(c,9,ones(3,3));
cmin = ordfilt2(c,1,ones(3,3));

% Compute the difference between the maximum and minimum filtered images
cDiff = cmax - cmin;

figure;
subplot(1,3,1);
imshow(cmin, []);
title('cmin');

subplot(1,3,2);
imshow(cmax, []);
title('cmax');

subplot(1,3,3);
imshow(cDiff, []);
title('cmax - cmin');