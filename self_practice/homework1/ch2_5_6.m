c = imread('../data/Original_Images_1/cameraman.png');
imwrite(c,'cameraman.jpg')
imwrite(c,'cameraman.bmp')

imfinfo('cameraman.jpg')
imfinfo('cameraman.bmp')
imfinfo("../data/Original_Images_1/cameraman.png")