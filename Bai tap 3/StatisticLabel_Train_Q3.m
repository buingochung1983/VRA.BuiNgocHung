function StatisticLabel_Train_Q3()
imgTrainALL = loadMNISTImages('./train-images.idx3-ubyte');
lblTrainALL = loadMNISTLabels('./train-labels.idx1-ubyte');
% Size Image
nTrainImages = size(imgTrainALL,2);
Statistic = zeros(2,10);
% Gan label cho dong so 1
for i=1:10
Statistic(1,i) =i-1;
end
% dem so luong
for i=1:nTrainImages
Statistic(2,lblTrainALL(i)+1) =Statistic(2,lblTrainALL(i)+1)+1;
end
% in ra kieu csv
csvwrite('d:\AHung\Nhandangthigiac\VRA.BuiNgocHung\Bai tap 2\StatisticLabel_Train.csv',Statistic);

end

