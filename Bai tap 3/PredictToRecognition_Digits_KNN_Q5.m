function lblPredictTest= PredictToRecognition_Digits_KNN_Q5(nNumber)
    allTrainImages = loadMNISTImages('./train-images.idx3-ubyte');
    allTrainLabels = loadMNISTLabels('./train-labels.idx1-ubyte');
    
    mdl = fitcknn(allTrainImages', allTrainLabels);
    
    allTestImages = loadMNISTImages('./t10k-images.idx3-ubyte');
    allTestLabels = loadMNISTLabels('./t10k-labels.idx1-ubyte');   

    imageTest = allTestImages(:, nNumber);
    %nhan nhan dang ra
    lblPredictTest = predict(mdl, imageTest');

end

