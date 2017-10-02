function Recognition004_Digits()

imgTrainALL = loadMNISTImages('./train-images.idx3-ubyte');
lblTrainALL = loadMNISTLabels('./train-labels.idx1-ubyte');

imgTestALL = loadMNISTImages('./t10k-images.idx3-ubyte');
lblTestALL = loadMNISTLabels('./t10k-labels.idx1-ubyte');

nTrainImages = size(imgTrainALL,2);

nNumber = randi([1 nTrainImages]);

figure;
img = imgTrainALL(:,nNumber);% hinh n
img2D = reshape(img,28,28);% show image
strLabelImage = num2str(lblTrainALL(nNumber));% hinh n
strLabelImage = [strLabelImage,'(',num2str(nNumber),')'];
imshow(img2D);
title(strLabelImage);% show label

% cua test
nTestImages = size(imgTestALL,2);

nNumber = randi([1 nTestImages]);

figure;
img = imgTestALL(:,nNumber);% hinh n
img2D = reshape(img,28,28);% show image
strLabelImage = num2str(lblTestALL(nNumber));% hinh n
strLabelImage = [strLabelImage,'(',num2str(nNumber),')'];
imshow(img2D);
title(strLabelImage);% show label




end

