function [im1_lo, im2_hi, im_hybrid] = hybrid_image (im1, im2, G1, G2)

% after computing the 3 output images, display all the iamges:
% in a 3x2 grid, display the 2 original images (first row),
% low-pass-filtered and high-pass filtered images (second row),
% and hybrid image (3rd row)

close all;

im1_lo = imgaussfilt(im1, G1);
im2_hi = im2 - imgaussfilt(im2, G2);
im_hybrid = im2_hi + im1_lo;

subplot(3,2,1), imshow(im1)
subplot(3,2,2), imshow(im2)

subplot(3,2,3), imshow(im1_lo)
subplot(3,2,4), imshow(.5+im2_hi)

subplot(3,2,5), imshow(im_hybrid)
truesize([500,500])



