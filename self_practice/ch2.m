%%2. If you are using MATLAB or Octave, read in an RGB image and save it as an indexed image.
x = imread('../data/Original_Images_1/lenna.png');
[y,map] = rgb2ind(x,10);

figure
subplot(1,2,1)
imshow(x);
title('Original RGB')

subplot(1,2,2)
imshow(y, map);
title('Indexed Image')