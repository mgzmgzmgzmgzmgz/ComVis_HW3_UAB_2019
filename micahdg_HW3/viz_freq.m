function viz_freq (im1, im2)

% display a 3x3 grid of the first image at progressively larger sigma
% which can be used to choose sigma

%B = imgaussfilt(A,sigma)
g1_im1 = imgaussfilt(im1, 1);
g2_im1 = imgaussfilt(im1, 2.5);
g3_im1 = imgaussfilt(im1, 5);
g4_im1 = imgaussfilt(im1, 7.5);
g5_im1 = imgaussfilt(im1, 10);
g6_im1 = imgaussfilt(im1, 12.5);
g7_im1 = imgaussfilt(im1, 15);
g8_im1 = imgaussfilt(im1, 17.5);
g9_im1 = imgaussfilt(im1, 20);

subplot(3,3,1), imshow(g1_im1)
subplot(3,3,2), imshow(g2_im1)
subplot(3,3,3), imshow(g3_im1)
subplot(3,3,4), imshow(g4_im1)
subplot(3,3,5), imshow(g5_im1)
subplot(3,3,6), imshow(g6_im1)
subplot(3,3,7), imshow(g7_im1)
subplot(3,3,8), imshow(g8_im1)
subplot(3,3,9), imshow(g9_im1)
truesize([500,500])

fprintf('Program paused. Press enter to continue.\n');
pause;

% display a 3x3 grid of various high-pass filtered images;
% remember to shift them by .5 for viewing
close all;

g1_im2 = im2 - imgaussfilt(im2, 1);
g2_im2 = im2 - imgaussfilt(im2, 2.5);
g3_im2 = im2 - imgaussfilt(im2, 5);
g4_im2 = im2 - imgaussfilt(im2, 7.5);
g5_im2 = im2 - imgaussfilt(im2, 10);
g6_im2 = im2 - imgaussfilt(im2, 12.5);
g7_im2 = im2 - imgaussfilt(im2, 15);
g8_im2 = im2 - imgaussfilt(im2, 17.5);
g9_im2 = im2 - imgaussfilt(im2, 20);

subplot(3,3,1), imshow(.5 + g1_im2)
subplot(3,3,2), imshow(.5 + g2_im2)
subplot(3,3,3), imshow(.5 + g3_im2)
subplot(3,3,4), imshow(.5 + g4_im2)
subplot(3,3,5), imshow(.5 + g5_im2)
subplot(3,3,6), imshow(.5 + g6_im2)
subplot(3,3,7), imshow(.5 + g7_im2)
subplot(3,3,8), imshow(.5 + g8_im2)
subplot(3,3,9), imshow(.5 + g9_im2)
truesize([500,500])

fprintf('Program paused. Press enter to continue.\n');
pause;


