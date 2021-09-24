% F2018065101
% Raja Faizan Nazir
Iin = imread("C:\Users\RFaiz\Downloads\plane.jpg");
Iin = rgb2gray(Iin); % Converting image to grey, can not convert it to Black and White (1/0) because on line 11 we have to devide them. Deviding with 0 is not possible
windowWidth = 16; % Blur is directly propotional to number
kernel = ones(windowWidth) / windowWidth ^ 2;
Iblur = imfilter(Iin, kernel); % Blur the image
% 1. Iblur ? blur(Iin)
Iout = zeros(size(Iin,1),size(Iin,2));
% creating Matrix
for row=1:size(Iin,1)
    for col=1:size(Iin,2)
        Iout(row,col) = ((Iin(row,col)) / (Iblur(row,col)));
    end
end
% 2. For all x, y coordinates in Iin , do: Iout(x, y) ? Iin(x, y) / Iblur(x, y)
for row=1:size(Iin,1)
    for col=1:size(Iin,2)
        if Iout(row,col)>1
            Iout(row,col) = 1;
        end
    end
end
% 3. For all x, y coordinates in Iout, set Iout(x, y) = 1 if Iout(x, y) > 1
% Sub Plot of 1 rows, 2 Columns
figure('Name','F2018065101 - Raja Faizan Nazir');
subplot(1,2,1), imshow(Iin), title('Orianl Image'); % just showing origanal image
subplot(1,2,2), imshow(Iout), title('Sketch'); % histogram of orignal image

% Done by your logic in PDF
% The pencil sketch effect can be achieved by the following algorithm:
% Given: A grayscale image Iin of intensity between 0 and 1.
% Return: A grayscale image Iout of intensity between 0 and 1.Iout is a pencil sketch 
% interpretation of Iin
% 1. Iblur ? blur(Iin)
% 2. For all x, y coordinates in Iin , do: Iout(x, y) ? Iin(x, y) / Iblur(x, y)
% 3. For all x, y coordinates in Iout, set Iout(x, y) = 1 if Iout(x, y) > 1 .
% 4. Return Iout