%% EE386 Lab 7: Image Processing
% Code Written by Paco Ellaga
% SID: 009602331

clear all, clc,close all;

uiopen('baboon.mat')     % loads image

%%
close all;

Baboon = show_img(xx)    % displays image
title('Baboon')

x = xx(25:149, 25:149);     % reforms image from row/column 25-149
ZoomedBaboon = show_img(x)
title('Baboon from rows/columns 25-149')

Length = length(x);                     % for the length of reform
yy = zeros(1,4*Length);                 % marking zeroes
yy(4:4:4*Length, 4:4:4*Length) = x;     % formatting the zeroes
ZeroedBaboon = show_img(yy)
title('Zeroed Baboon')

% a = mat2gray(xx);     % convert matrix to grayscale
% figure(4)
% show_img(a)

%% Triangle Interpolation Method

coeff = [1/3, 2/3, 1, 2/3, 1/3];
coeff = [1/4, 2/4, 3/4, 1, 3/4, 1/2, 1/4];
% coeff = [1/5, 2/5, 3/5, 4/5, 1, 4/5, 3/5, 2/5, 1/5];
tri = conv2(yy,coeff);
TriBaboon = show_img(tri)
title('Triangular Interpolation')

%%  Sinc Interpolation Method

for i = 0:22
    k = i + 1;
    w(k) = 0.54 - 0.46*cos(2*pi*i/22);
    
    if i == 11;
        bb(k) = w(k);
    else
        bb(k) = sin(pi*(i-11)/4) / (pi*(i-11)/4) * w(k);
    end;
end;

x_Filter = conv2(conv2(yy,bb),bb');
show_img(x_Filter)
title('Sinc Interpolation')