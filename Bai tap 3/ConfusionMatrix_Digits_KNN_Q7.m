function ConfusionMatrix_Digits_KNN_Q7()
    allTrainImages = loadMNISTImages('./train-images.idx3-ubyte');
    allTrainLabels = loadMNISTLabels('./train-labels.idx1-ubyte');
    
    mdl = fitcknn(allTrainImages', allTrainLabels);
    
    allTestImages = loadMNISTImages('./t10k-images.idx3-ubyte');
    allTestLabels = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    % Size Image  
    Matrix = zeros(10,10);
    nTestImages = size(allTestImages,2);  
     for i=1:nTestImages
         % nhan dua vao
        lblImageTest = allTestLabels(i);             
        imageTest = allTestImages(:, i);
        %nhan nhan dang ra
        lblPredictTest = predict(mdl, imageTest');
        
        % add vo matran nha
        Matrix(lblImageTest+1,lblPredictTest+1) =Matrix(lblImageTest+1,lblPredictTest+1)+1;
       
     end
     
     csvwrite('d:\AHung\Nhandangthigiac\VRA.BuiNgocHung\Bai tap 2\Matrix.csv',Matrix);

end

