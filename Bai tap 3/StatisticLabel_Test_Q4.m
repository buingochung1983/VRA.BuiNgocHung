function StatisticLabel_Test_Q4()
imgTestALL = loadMNISTImages('./t10k-images.idx3-ubyte');
lblTestALL = loadMNISTLabels('./t10k-labels.idx1-ubyte');
% Size Image
nTestImages = size(imgTestALL,2);
Statistic = zeros(2,10);
% Gan label cho dong so 1
for i=1:10
Statistic(1,i) =i-1;
end
% dem so luong
for i=1:nTestImages
Statistic(2,lblTestALL(i)+1) =Statistic(2,lblTestALL(i)+1)+1;
end
% in ra kieu csv
csvwrite('d:\AHung\Nhandangthigiac\VRA.BuiNgocHung\Bai tap 3\StatisticLabel_Test.csv',Statistic);

end

