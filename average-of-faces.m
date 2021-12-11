close all;
clear all;
clc;

sum_image = zeros(512,512,3);

for i = 1:132
    im = imread(['./faces_pca/faces_pca/face' num2str(i) '.png']);
    im = imresize(im,[512,512]);
    sum_image = sum_image + double(im);
end

sum_image = sum_image/(132*255);
figure, imshow (sum_image, []);
