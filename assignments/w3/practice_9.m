x = imread('../../data/Original_Images_2/thylacine.png');
x2 = x;
figure,
imshow(x2)
figure, imshow(imresize(x2,1/2))
figure, imshow(imresize(x2,1/4))
figure, imshow(imresize(x2,1/8))