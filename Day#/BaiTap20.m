function BaiTap20()
imgI = imread('cameraman.jpg ');
arrpointI = detectHarrisFeatures(imgI);
[arrfeatureI,arrValidPointI] = extractFeatures(imgI,arrpointI);
figure;
imshow(imgI);
arrSubValidPointI = arrValidPointI.selectStrongest(20);
% giu lai
hold on;

plot(arrSubValidPointI);

end

