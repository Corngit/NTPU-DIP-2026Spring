I = [20 20 20 10 10 10 10 10 10;
     20 20 20 20 20 20 20 20 10;
     20 20 20 10 10 10 10 20 10;
     20 20 10 10 10 10 10 20 10;
     20 10 10 10 10 10 10 20 10;
     10 10 10 10 20 10 10 20 10;
     10 10 10 10 10 10 10 10 10;
     20 10 20 20 10 10 10 20 20;
     20 10 10 20 10 10 20 10 20];

figure;
imshow(I, []);
title('Original Image');
cf = cell(1,12);
% apply gaussian filter
cf{1} = imfilter(I, fspecial('gaussian', [3,3],0.5));
cf{2} = imfilter(I, fspecial('gaussian', [3,3],1));
cf{3} = imfilter(I, fspecial('gaussian', [3,3],2));

cf{4} = imfilter(I, fspecial('gaussian', [7,7],1));
cf{5} = imfilter(I, fspecial('gaussian', [7,7],3));
cf{6} = imfilter(I, fspecial('gaussian', [7,7],6));

cf{7} = imfilter(I, fspecial('gaussian', [11,11],1));
cf{8} = imfilter(I, fspecial('gaussian', [11,11],4));
cf{9} = imfilter(I, fspecial('gaussian', [11,11],8));

cf{10} = imfilter(I, fspecial('gaussian', [21,21],1));
cf{11} = imfilter(I, fspecial('gaussian', [21,21],5));
cf{12} = imfilter(I, fspecial('gaussian', [21,21],10));

figure;
for k=1:12
    subplot(4, 3, k);
    imshow(cf{k}, []);
end

