a = [0 100 150 255]
b = [40 100 220 255]

lin = interp1(a,b,0:255,'linear');
cl = uint8(lin(c+1));
figure, imshow(cl)