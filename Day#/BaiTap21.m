function BaiTap21()
imgI = imread('cameraman.jpg ');
arrpointI = detectSURFFeatures(imgI);

imgJ = imread('cameraman30.jpg ');
arrpointJ = detectSURFFeatures(imgJ);

[arrfeatureI,arrValidPointI] = extractFeatures(imgI,arrpointI);

[arrfeatureJ,arrValidPointJ] = extractFeatures(imgJ,arrpointJ);

arrIndexPair = matchFeatures(arrfeatureI,arrfeatureJ);

arrMatchedPointI = arrValidPointI(arrIndexPair(:,1),:);

arrMatchedPointJ = arrValidPointJ(arrIndexPair(:,2),:);

figure;
ax= axes;
showMatchedFeatures(imgI,imgJ,arrMatchedPointI,arrMatchedPointJ,'montage','Parent',ax);
title(ax,'Candinate point matches');
legend(ax,'Matched point I','Matched point J');
end
