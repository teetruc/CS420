
% Read output variables from the files
output_variable = fileread('c_output.txt');
output_variable2 = fileread('haskell_output.txt');
output_variable3 = fileread('prolog_output.txt');

% Convert the strings to numeric displays
newOut = uint8(str2num(output_variable));
newOut2 = uint8(str2num(output_variable2));
newOut3 = uint8(str2num(output_variable3));

% Reshape the numeric displays to original sizes
outputMatrix = reshape(newOut, 50, 50);
outputMatrix2 = reshape(newOut2, 50, 50);
outputMatrix3 = reshape(newOut3, 50, 50);

% Create a figure with two subplots
figure()

%reading in the original mickey file and plotting it
mickey = imread('mickey.png');
subplot(2, 2, 1)
imshow(mickey)
title('Original Image')

% Plot the first output file
subplot(2, 2, 2)
imshow(outputMatrix)
title('Image from C Output')

% Plot the second output file
subplot(2, 2, 3)
imshow(outputMatrix2)
title('Image from Haskell Output')

% Plot the second output file
subplot(2, 2, 4)
imshow(outputMatrix3)
title('Image from Prolog Output')


