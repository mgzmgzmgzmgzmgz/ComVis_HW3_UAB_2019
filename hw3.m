%Micah Giles

% HW3 CSx73 Computer Vision, Johnstone 19sp
% hybrid images question

clear; close all; clc

% read the two images 

%Einstein
%im1 = imread("/Users/micahgiles/Desktop/Desktop/UAB_Spring_19/Computer_Vision/ComViz_HW3_Folder/image_pairs/albert.bmp");
%Marilyn
%im2 = imread("/Users/micahgiles/Desktop/Desktop/UAB_Spring_19/Computer_Vision/ComViz_HW3_Folder/image_pairs/marilyn.bmp");

%Dog
%im1 = imread("/Users/micahgiles/Desktop/Desktop/UAB_Spring_19/Computer_Vision/ComViz_HW3_Folder/image_pairs/dog.bmp");
%Cat
%im2 = imread("/Users/micahgiles/Desktop/Desktop/UAB_Spring_19/Computer_Vision/ComViz_HW3_Folder/image_pairs/cat.bmp");

%Plane
%im1 = imread("/Users/micahgiles/Desktop/Desktop/UAB_Spring_19/Computer_Vision/ComViz_HW3_Folder/image_pairs/plane.bmp");
%Bird
%im2 = imread("/Users/micahgiles/Desktop/Desktop/UAB_Spring_19/Computer_Vision/ComViz_HW3_Folder/image_pairs/bird.bmp");

%Submarine
im1 = imread("/Users/micahgiles/Desktop/Desktop/UAB_Spring_19/Computer_Vision/ComViz_HW3_Folder/image_pairs/submarine.bmp");
%Fish
im2 = imread("/Users/micahgiles/Desktop/Desktop/UAB_Spring_19/Computer_Vision/ComViz_HW3_Folder/image_pairs/fish.bmp");

%Motorcycle
%im1 = imread("/Users/micahgiles/Desktop/Desktop/UAB_Spring_19/Computer_Vision/ComViz_HW3_Folder/image_pairs/motorcycle.bmp");
%Bike
%im2 = imread("/Users/micahgiles/Desktop/Desktop/UAB_Spring_19/Computer_Vision/ComViz_HW3_Folder/image_pairs/bicycle.bmp");




% imshow(img1)
% imshow(img2)

% fprintf('Program paused. Press enter to continue.\n');
% pause;

close all;
% convert to double over [0,1] (need to allow negative values in hi-filtered)
im1 = double(im1);
im2 = double(im2);
%  
im1 = im1/255;
im2 = im2/255;

%viz_freq (im1, im2); % find G1 and G2 interactively
viz_freq(im1, im2)

% choose G1 and G2 (and report to hw3_report.txt, you could do that by hand)
G1 = 5;
G2 = 3;

fileID = fopen('hw3_report.txt','w');
fprintf(fileID, 'Micah Giles\n');
fprintf(fileID, 'HW3 Report\n\n');

fprintf(fileID, 'Cat = high pass, Dog = low pass\n');
fprintf(fileID, 'The sigma for the cat: 6\n');
fprintf(fileID, 'The sigma for the dog: 9\n\n');

fprintf(fileID, 'Marilyn = high pass, Albert = low pass\n');
fprintf(fileID, 'The sigma for Albert: 3\n');
fprintf(fileID, 'The sigma for Marilyn: 4\n\n');

fprintf(fileID, 'Bicycle = high pass, Motorcycle = low pass\n');
fprintf(fileID, 'The sigma for the bike: 5\n');
fprintf(fileID, 'The sigma for motorcycle: 8\n\n');

fprintf(fileID, 'Bird = high pass, Plane = low pass\n');
fprintf(fileID, 'The sigma for the plane: 7\n');
fprintf(fileID, 'The sigma for the bird: 6\n\n');

fprintf(fileID, 'Fish = high pass, Submarine = low pass\n');
fprintf(fileID, 'The sigma for the sub: 5\n');
fprintf(fileID, 'The sigma for the fish: 3\n\n');

fclose(fileID);

% build and visualize the hybrid image
[lo,hi,hybrid] = hybrid_image (im1, im2, G1, G2);

% save the hybrid image (e.g., dog/cat pair in 'dog_cat.jpg')

 %imwrite(hybrid, "albert_marilyn.jpg");
 %imwrite(hybrid, "dog_cat.jpg");
imwrite(hybrid, "submarine_fish.jpg");
 %imwrite(hybrid, "motorcycle_bicycle.jpg");
 %imwrite(hybrid, "plane_bird.jpg");

% repeat for each image pair
% challenge: design a more elegant way to cycle through the image pairs