function ViewImage_Train_Q1(nNumber)
imgTrainALL = loadMNISTImages('./train-images.idx3-ubyte');
lblTrainALL = loadMNISTLabels('./train-labels.idx1-ubyte');
% Size Image
nTrainImages = size(imgTrainALL,2);

figure;

img = imgTrainALL(:,nNumber);% hinh nNumber
img2D = reshape(img,28,28);% show image
strLabelImage = num2str(lblTrainALL(nNumber));% hinh nNumber
imshow(img2D);
title(strLabelImage);% show label
end

