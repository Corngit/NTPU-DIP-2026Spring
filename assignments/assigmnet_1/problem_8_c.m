clear; clc; close all;

c = [12 6 5 13 14 14 16 15;
     11 10 8 5 8 11 14 14;
      9 8 3 3 7 12 18 19;
     10 7 0 0 10 12 13 17;
     16 9 13 13 16 19 19 17;
     12 10 14 15 18 18 16 14;
     11 8 10 12 14 13 14 15;
      0 0 0 0 0 11 12 12];

L = 20;
[M,N] = size(c);

g = zeros(M,N);

for i = 1:M
    for j = 1:N
        r = c(i,j);

        if r <= 5
            s = (2/5) * r;
        elseif r <= 9
            s = 2 + 4 * (r - 5);
        else
            s = 18 + (1/10) * (r - 9);
        end

        g(i,j) = round(s);   % 轉成最接近整數
    end
end

% 原圖 histogram
h1 = zeros(1,L);
for i = 1:M
    for j = 1:N
        level = c(i,j);
        h1(level+1) = h1(level+1) + 1;
    end
end

% 轉換後 histogram
h2 = zeros(1,L);
for i = 1:M
    for j = 1:N
        level = g(i,j);
        h2(level+1) = h2(level+1) + 1;
    end
end

figure;

subplot(2,2,1);
imagesc(c);
colormap(gray(L));
colorbar;
axis image;
title('Original Image');

subplot(2,2,2);
bar(0:L-1, h1);
xlim([0 L-1]);
xlabel('Gray level');
ylabel('Frequency');
title('Original Histogram');

subplot(2,2,3);
imagesc(g);
colormap(gray(L));
colorbar;
axis image;
title('Piecewise Linear Stretched Image');

subplot(2,2,4);
bar(0:L-1, h2);
xlim([0 L-1]);
xlabel('Gray level');
ylabel('Frequency');
title('Stretched Histogram');

disp('New image after piecewise linear contrast stretching:');
disp(g);