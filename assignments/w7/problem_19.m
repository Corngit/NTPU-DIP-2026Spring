c = imread('../../data/Original_Images_1/cameraman.png');
g1 = fspecial('gaussian',[5,5]);
g2 = fspecial('gaussian',[5,5],2);
g3 = fspecial('gaussian',[11,11],1);
g4 = fspecial('gaussian',[11,11],5);

figure,
subplot(2,2,1),imshow(imfilter(c,g1))
subplot(2,2,2),imshow(imfilter(c,g2))
subplot(2,2,3),imshow(imfilter(c,g3,'symmetric'))
subplot(2,2,4),imshow(imfilter(c,g4,'symmetric'))