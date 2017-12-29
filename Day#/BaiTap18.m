function BaiTap18()
figure;
imgI = imread('cameraman.jpg ');
imshow(imgI);
points = detectHarrisFeatures(imgI);
% giu lai
hold on;
% lay 20 diem dac trung
subpoints = points.selectStrongest(20);
plot(subpoints);

end
