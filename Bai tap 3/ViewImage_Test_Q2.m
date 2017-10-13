function ViewImage_Test_Q2(nNumber)
imgTestALL = loadMNISTImages('./t10k-images.idx3-ubyte');
lblTestALL = loadMNISTLabels('./t10k-labels.idx1-ubyte');
% Size Image
nTestImages = size(imgTestALL,2);

figure;

img = imgTestALL(:,nNumber);% hinh nNumber
img2D = reshape(img,28,28);% show image
strLabelImage = num2str(lblTestALL(nNumber));% hinh nNumber
imshow(img2D);
title(strLabelImage);% show label
end

