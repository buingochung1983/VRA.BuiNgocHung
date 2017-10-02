function Recognition002_Digits()
fprintf('\n Load du lieu train');
imgTrainALL = loadMNISTImages('./train-images.idx3-ubyte');
lblTrainALL = loadMNISTLabels('./train-labels.idx1-ubyte');

fprintf('\n Load du lieu test');
imgTestALL = loadMNISTImages('./t10k-images.idx3-ubyte');
lblTestALL = loadMNISTLabels('./t10k-labels.idx1-ubyte');

nTrainImages = size(imgTrainALL,2);
nTrainLabals = size(lblTrainALL,1);

nTestImages = size(imgTestALL,2);
nTestLabals = size(lblTestALL,1); 

nSizeofImage = size(imgTrainALL);

fprintf('\n so luong anh train : [%d].',nTrainImages);
fprintf('\n so luong nhan anh train : [%d].',nTrainLabals);
fprintf('\n so luong anh test : [%d].',nTestImages);
fprintf('\n so luong nhan anh test : [%d].',nTestLabals);
fprintf('\n kich thuoc cua mot anh : [%d].',nSizeofImage);

end

