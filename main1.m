% F2018065101
% Raja Faizan Nazir
Iin = imread("C:\Users\RFaiz\Downloads\plane.jpg");
Iin = rgb2gray(Iin);
dummy =   [0.125 0.125 0.125 0.125 0.125 0.125;
    0.125 0.125 0.125 0.125 0.125 0.125;
    0.125 0.125 -1 -1 0.125 0.125;
    0.125 0.125 -1 -1 0.125 0.125;
    0.125 0.125 0.125 0.125 0.125 0.125;
    0.125 0.125 0.125 0.125 0.125 0.125]; % 0.125 is grey like and -1 is black
balanced = imfilter( Iin, dummy);
Iout = 255-balanced;
% Sub Plot of 1 rows, 2 Columns
figure('Name','F2018065101 - Raja Faizan Nazir');
subplot(1,2,1), imshow(Iin), title('Orianl Image'); % just showing origanal image
subplot(1,2,2), imshow(Iout), title('Sketch'); % histogram of orignal image
% logic explained by Aggelos K. Katsaggelos
% https://www.coursera.org/learn/digital
% I can give you viva of this logic
