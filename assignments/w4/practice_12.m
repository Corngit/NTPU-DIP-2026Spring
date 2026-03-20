c = imread('../../data/Original_Images_1/chickens.png');
figure, imshow(c)
figure, imhist(c), axis tight

d = imadjust(c,[],[1,0]);
figure, imshow(d)
figure, imhist(d), axis tight

ca1 = imadjust(c,[],[],0.5);
ca2 = imadjust(c,[],[],0.25);

figure, imshow(ca1)
figure, imhist(ca1), axis tight
figure, imshow(ca2)
figure, imhist(ca2), axis tight