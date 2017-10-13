function numsai =SumfallForRecognition_Digits_KNN_Q7(Label)
    allTrainImages = loadMNISTImages('./train-images.idx3-ubyte');
    allTrainLabels = loadMNISTLabels('./train-labels.idx1-ubyte');
    
    mdl = fitcknn(allTrainImages', allTrainLabels);
    
    allTestImages = loadMNISTImages('./t10k-images.idx3-ubyte');
    allTestLabels = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    % Size Image
    numsai= 0;
    nTestImages = size(allTestImages,2);    
     for i=1:nTestImages
         % nhan dua vao
        lblImageTest = allTestLabels(i);
        if(lblImageTest==Label)        
            imageTest = allTestImages(:, i);
            %nhan nhan dang ra
            lblPredictTest = predict(mdl, imageTest');
            if(lblImageTest~=lblPredictTest)
                numsai = numsai+1;
            end

        end
     end

end


