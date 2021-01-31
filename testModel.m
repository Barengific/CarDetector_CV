%Barengific

function [numA]=testModel(I)

%Load pre-trained data
load('carDetect.mat');

[bbox,score] = detect(acfDetector,I);
%%
%output results in figure
for i = 1:length(score)
        annotation = sprintf('car = %.1f',score(i));
        I = insertObjectAnnotation(I,'rectangle',bbox(i,:),annotation);
end
figure
imshow(I)
%%
[A,not1] = size(bbox);
numA = int8(A);

disp(strcat('car number =  ',num2str(numA)));
end