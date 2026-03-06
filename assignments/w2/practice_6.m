[em, emap] = imread('../../data/Original_Images_1/emu.png');
em2 = imread('../../data/Original_Images_1/emu.png');

figure

subplot(2,1,1);
imshow(em2);
title('Original');

subplot(2,1,2);
imshow(em, emap);
title('Indexed Image with Colormap');

impixelinfo