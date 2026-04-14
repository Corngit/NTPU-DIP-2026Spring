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

% apply average filter
cf = cell(1,5);

for k = 1:5
cf{k} = imfilter(I, fspecial('average', 2*k+1));
end

figure;
for k=1:5
    subplot(3, 3, k);
    imshow(cf{k}, []);
    title(['Average Filter Size: ', num2str(2*k+1)]);
end

%The smallest averaging filter for which the fine detail cannot be seen is approximately 
%7*7