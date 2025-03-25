%% 2D Fourier
llama = im2double(imread('llama.jpg')); % Read in the llama image.
llama2 = rgb2gray(llama); % convert to RGB to gray scale
lama_fft = fft2(llama2);
subplot (2,2,1)
imagesc(abs(((lama_fft))))
title("Abs Lama")
hold on
subplot (2,2,2)
imagesc(log10(abs(((lama_fft)))))
colormap('gray')
title("Log Lama")
subplot (2,2,3)
llama3 = ifft2(lama_fft);
imshow(llama3)
title("Fourier Re-Constructed Llama")
%% Camera Man
clf
cameraman = im2double(imread('cameraman.tif')); 
% cameraman2 = rgb2gray(cameraman); 
cameraman_fft = fft2(cameraman);
subplot (2,2,1)
imagesc(abs(((cameraman_fft))))
title("Abs Camera Man")
hold on
subplot (2,2,2)
imagesc(log10(abs(((cameraman_fft)))))
colormap('gray')
title("Log Camera Man")
subplot (2,2,3)
cameraman3 = ifft2(cameraman_fft);
imshow(cameraman3)
title("Fourier Re-Constructed Camera Man")
%% Blocker
clf
blocker = zeros(876,1314);
blocker(1:50,1:50) = 1;
blocker(1:50,end-50:end) = 1;
blocker(end-50:end, 1:50) = 1;
blocker(end-50:end,end-50:end) = 1;
llama_fft2 = lama_fft .* blocker;
subplot(2,2,3)
imshow(llama_fft2)
title('Blocker')
hold on
lama_4=abs(ifft2(llama_fft2));
subplot(2,2,1)
imshow(lama_4)
title("Blocker Llama")
subplot(2,2,2)
imshow(llama2)
title("Original Llama")
%% Camera Man Blocker
clf
blocker = zeros(256,256);
blocker(1:50,1:50) = 1;
blocker(1:50,end-50:end) = 1;
blocker(end-50:end, 1:50) = 1;
blocker(end-50:end,end-50:end) = 1;
cameraman_fft2 = cameraman_fft .* blocker;
subplot(2,2,3)
imshow(cameraman_fft2)
title("Blocker")
hold on
cameraman_4=abs(ifft2(cameraman_fft2));
subplot(2,2,1)
imshow(cameraman_4)
title("Blocker Camera Man")
subplot(2,2,2)
imshow(cameraman)
title("Original Camera Man")
%% Lena 
clf
lena = im2double(imread('C:\Users\Doria\Desktop\Lenna.png'));
lena2 = rgb2gray(lena);
lena_fft = fft2(lena2);
blocker = zeros(512,512);
blocker(1:50,1:50) = 1;
blocker(1:50,end-50:end) = 1;
blocker(end-50:end, 1:50) = 1;
blocker(end-50:end,end-50:end) = 1;
lena_fft2 = lena_fft .* blocker;
subplot(2,2,3)
imshow(lena_fft2)
title('Blocker')
hold on
lena_4=ifft2(lena_fft2);
subplot(2,2,1)
imshow(lena_4)
title("Blocker Lenna")
subplot(2,2,2)
imshow(lena2)
title("Original Lenna")
%% Edge Detection
clf
k = imread ('cameraman.tif');
clf
subplot(3,3,1)
imshow(k)
title("Original Camera Man")
hold on
BW = edge(k,'roberts');
B = edge(k,'sobel');
W= edge(k,'prewitt');
h=edge(k,'canny');
subplot(3,3,2)
imshow(BW)
title("Robert's Camera Man")
subplot(3,3,3)
imshow(B)
title("Sobel Camera Man")
subplot(3,3,4)
imshow(W)
title("Prewitt Camera Man")
subplot(3,3,5)
imshow(h)
title("Canny Camera Man")
%% Noise
clf
k = imread ('moon.tif');
subplot(3,3,1)
moon = im2gray(k);
imshow(moon)
title("Original Moon")
hold on
J = imnoise(moon,"gaussian");
L = imnoise(moon,"poisson");
M = imnoise(moon,"salt & pepper");
Q = imnoise(moon,"speckle");
subplot(3,3,2)
imshow(J)
title("Gaussian Moon")
subplot(3,3,3)
imshow(L)
title("Poisson Moon")
subplot(3,3,4)
imshow(M)
title("Salt & Pepper Moon")
subplot(3,3,5)
imshow(Q)
title("Speckle Moon")
%% Histogram
clf
k = imread('pout.tif');
x = histeq(x);
subplot(2,2,1)
imshow(k)
title("Image")
hold on
subplot(2,2,2)
imhist(k)
title("Histogram")
subplot(2,2,3)
histeq(k)
title('Equalized Image')
subplot(2,2,4)
imhist(x)
title("Equalized Image Histogram")