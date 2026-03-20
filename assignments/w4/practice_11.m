b = imread('../../data/Original_Images_1/blocks.jpg');
class(b) %%know the data type
figure, imshow(b)
figure, imshow(b+128)
figure, imshow(b-128)

figure, imshow(255-b) %%negative film