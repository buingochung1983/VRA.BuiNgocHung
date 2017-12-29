function BaiTap19()
imgI = imread('cameraman.jpg ');
arrpointI = detectSURFFeatures(imgI);
[arrfeatureI,arrValidPointI] = extractFeatures(imgI,arrpointI);
figure;
imshow(imgI);
arrSubValidPointI = arrValidPointI.selectStrongest(20);
% giu lai
hold on;

plot(arrSubValidPointI);

end
