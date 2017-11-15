function newImage = my_minutiae(I)

% Binarize the image
binaryImage = im2bw(I);

% Thin the image
thinImage = bwmorph(binaryImage, 'thin', Inf);

% Minutiae extraction
imageSize = size(thinImage);
WINDOW = 3;
n = (WINDOW - 1) / 2;

% Makes a +2 length and height matrix
r = imageSize(1) + 2*n;
c = imageSize(2) + 2*n;
double temp(r, c);

% Creates zeros of size (r, c)
temp = zeros(r, c);
bifurcation = zeros(r, c);
ridge = zeros(r, c);

% Brings the thin_image pixels to temp
temp((n + 1) : (end - n), (n +  1) : (end - 1)) = thinImage(:,:);

newImage = zeros(r, c); % new image to show
newImage(:, :) = temp .* 255;

for i = (n + 1 + 10) : (imageSize(1) + n - 10 ) % 12 : s(1) - 9

    for j = (n + 1 + 10) : (imageSize(2) + n - 10) % 12 : s(2) - 9
       e = 1; 

        for k = (i - n) : (i + n) % k = i - 1 : i + 1
            f = 1;

            for l = (j - n) : (j + n) % l = j - 1 : j + 1
                mat(e, f) = temp(k, l);
                f = f + 1;
                % if(find(mat))
                %     disp('i')
                %     disp(i);
                %     disp(j);
                %     disp(k);
                % end
            end
        end

    end

end

