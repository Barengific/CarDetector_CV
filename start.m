%Barengific

%Input Test image
I1 = imread('test/t1.jpg');
I2 = imread('test/t2.jpg');
I3 = imread('test/t3.jpg');
I4 = imread('test/t4.jpg');
I5 = imread('test/t5.jpg');

%executes count_lego function & outputs blue2x4||red2x2 occurances
[numA] = testModel(I1);
[numA] = testModel(I2);
[numA] = testModel(I3);
[numA] = testModel(I4);
[numA] = testModel(I5);
