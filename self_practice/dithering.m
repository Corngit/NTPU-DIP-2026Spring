%% dithering is the self-study part
x = imread('../data/Original_Images_2/thylacine.png');
D = [0 128;192 64];
r = repmat(D,160,200);
x2 = x>r; imshow(x2)
D2 = [0 128 32 160;192 64 224 96;48 176 16 144;240 112 208 80];
r2 = repmat(D2,80,100);
x4 = x>r2; imshow(x4)