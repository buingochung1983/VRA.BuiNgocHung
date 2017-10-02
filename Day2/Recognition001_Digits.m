function Recognition001_Digits()
fprintf('\n Load du lieu train');
imgTrainALL = loadMNISTImages('./train-images.idx3-ubyte');
lblTrainALL = loadMNISTLabels('./train-labels.idx1-ubyte');
fprintf('\n Load du lieu test');
imgTestALL = loadMNISTImages('./t10k-images.idx3-ubyte');
lblTestALL = loadMNISTLabels('./t10k-labels.idx1-ubyte');
fprintf('\n Ket thuc.\n');
end

