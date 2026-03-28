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
[M, N] = size(c);
n = M * N;

%計算 histogram
h = zeros(1, L);
for i = 1:M
    for j = 1:N
        level = c(i,j);
        h(level+1) = h(level+1) + 1;
    end
end

%計算累積 histogram 並做映射
cdf = zeros(1, L);
cdf(1) = h(1) / n;
for k = 2:L
    cdf(k) = cdf(k-1) + h(k) / n;
end

% 3.四捨五入
T = round((L-1) * cdf);

% 產生等化後影像
g = zeros(M, N);
for i = 1:M
    for j = 1:N
        g(i,j) = T(c(i,j)+1);
    end
end

% 5. 計算等化後 histogram
h2 = zeros(1, L);
for i = 1:M
    for j = 1:N
        level = g(i,j);
        h2(level+1) = h2(level+1) + 1;
    end
end

% 6. 顯示結果
figure;

subplot(2,2,1);
imagesc(c);
colormap(gray(L));
colorbar;
axis image;
title('Original Image');

subplot(2,2,2);
bar(0:L-1, h);
xlim([0 L-1]);
xlabel('Gray level');
ylabel('Frequency');
title('Original Histogram');

subplot(2,2,3);
imagesc(g);
colormap(gray(L));
colorbar;
axis image;
title('Equalized Image');

subplot(2,2,4);
bar(0:L-1, h2);
xlim([0 L-1]);
xlabel('Gray level');
ylabel('Frequency');
title('Equalized Histogram');
