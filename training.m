%Barengific

function [numA]=training(I)
%%%%%%%%Train using data
load('carD/gTruth.mat');
% 
carrer = selectLabels(gTruth, 'car');
 
trainingData = objectDetectorTrainingData(carrer,'SamplingFactor', 1,...
'WriteLocation', 'train_data');
 
acfDetector = trainACFObjectDetector(trainingData,'NumStages',8);
save('carDetect.mat','acfDetector');

%%
end