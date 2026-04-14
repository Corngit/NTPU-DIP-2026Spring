[em,map] = imread('../data/Original_Images_1/emu.png');
e = ind2gray(em,map)
e2 = im2uint8(e)
class(e)
figure,imshow(e)
figure,imshow(e2)