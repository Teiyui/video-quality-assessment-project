I = imread('lighthouse.png');
Inoise = imnoise(I,'salt & pepper',0.15);
Iblur = imgaussfilt(I, 10);
figure
montage({I,Inoise,Iblur},'Size',[1 3])
title('Original Image | Noisy Image | Blurry Image')

niqeI = niqe(I);
fprintf('NIQE score for original image is %0.4f.\n',niqeI)

niqeInoise = niqe(Inoise);
fprintf('NIQE score for noisy image is %0.4f.\n',niqeInoise)

niqeIblur = niqe(Iblur);
fprintf('NIQE score for blurry image is %0.4f.\n',niqeIblur)