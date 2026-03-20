c = imread('../../data/Original_Images_1/chickens.png');
figure, imshow(c)
figure, imhist(c), axis tight
ch = histeq(c);
figure, imshow(ch)
figure, imhist(ch), axis tight