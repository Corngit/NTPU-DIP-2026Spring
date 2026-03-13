x = imread('../../data/Original_Images_2/thylacine.png');
figure, imshow(x)
y = grayslice(x,4);
figure, imshow(y,gray(4))