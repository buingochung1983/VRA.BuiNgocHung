function Recognition003_Digits()
fprintf('\n Load du lieu train');
imgTrainALL = loadMNISTImages('./train-images.idx3-ubyte');
lblTrainALL = loadMNISTLabels('./train-labels.idx1-ubyte');

fprintf('\n Load du lieu test');
imgTestALL = loadMNISTImages('./t10k-images.idx3-ubyte');
lblTestALL = loadMNISTLabels('./t10k-labels.idx1-ubyte');

nTrainImages = size(imgTrainALL,2);

figure;
img = imgTrainALL(:,1);% hinh 1
img2D = reshape(img,28,28);% show image
strLabelImage = num2str(lblTrainALL(1));% hinh 1
imshow(img2D);
title(strLabelImage);% show label


figure;
imgLast = imgTrainALL(:,nTrainImages);% hinh 1
img2DLast = reshape(imgLast,28,28);% show image
strLabelImage = num2str(lblTrainALL(nTrainImages));% hinh 1
imshow(img2DLast);
title(strLabelImage);% show label

end


