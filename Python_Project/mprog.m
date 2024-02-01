% read the greyscale image
img = imread('mickey.png');

% reshape the image into a 1D array
img_1d = imresize(img, [50,50]);
img_2 = reshape(img_1d, 1, []);

% write the data into a file
dlmwrite('input.txt', img_2, 'delimiter', ' ');