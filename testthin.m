function bw = testthin(Image);

%% Load a Image
% close all ;
IterThinning = 100 ;
% Image = imread('bw2.bmp') ;
% if isbw(Image) == 0
%     Image = im2bw( Image ) ;
% end
Raw = Image ;

for Iter = 1:IterThinning
    OutBW1 = Condition1( Image, 0 ) ;
    OutBW2 = Condition2( OutBW1, 0 ) ;
    Image = OutBW2 ;
end


%% debug and compare the result in Matlab
% I = bwmorph(Raw, 'thin', Inf);
% close all ;
figure,imshow( Raw ) ;
% figure,imshow( I ) ;
figure,imshow( OutBW2 ) ;