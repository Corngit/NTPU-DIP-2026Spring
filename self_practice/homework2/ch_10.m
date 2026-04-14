c1 = imread("cameraman.png");
c2 = imread("car.png");

f1 = [0 -1 0;-1 4 -1;0 -1 0];
f2 = [-1 -1 -1; -1 8 -1; -1 -1 -1];

% Apply the filters to the images
filteredC1 = imfilter(c1, f1);
filteredC2 = imfilter(c1, f2);
filteredC3 = imfilter(c2, f1);
filteredC4 = imfilter(c2, f2);

% Display the filtered images
figure;
subplot(3, 2, 1), imshow(c1), title('Original Image 1');
subplot(3, 2, 2), imshow(c2), title('Original Image 2');
subplot(3, 2, 3), imshow(filteredC1), title('Filtered Image 1');
subplot(3, 2, 4), imshow(filteredC2), title('Filtered Image 2');
subplot(3, 2, 5), imshow(filteredC3), title('Filtered Image 3');
subplot(3, 2, 6), imshow(filteredC4), title('Filtered Image 4');