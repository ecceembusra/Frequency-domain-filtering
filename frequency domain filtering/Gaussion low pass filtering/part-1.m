clear all,clc,close all
I = imread('ecem.jpeg');
ecem=rgb2gray(I);

I005=Gaussian(ecem,0.05);
I01=Gaussian(ecem,0.1);
I03=Gaussian(ecem,0.3);
I07=Gaussian(ecem,0.7);

subplot(2,3,1),imshow(ecem);title('Orjinal');
subplot(2,3,2),imshow(I005);title('Sigma=0.05');
subplot(2,3,3),imshow(I01);title('Sigma=0.1');
subplot(2,3,4),imshow(I03);title('Sigma=0.3');
subplot(2,3,5),imshow(I07);title('Sigma=0.7');


