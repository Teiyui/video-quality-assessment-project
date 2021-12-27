shuttleVideo = VideoReader("./videoFile/Andrew_Burmeister_great_hd480.mp4");
workDir = "video";
ii = 1;

while hasFrame(shuttleVideo)
   img = readFrame(shuttleVideo);
%    img = imgaussfilt(img, 4);
   img = imnoise(img,'salt & pepper',0.07);
   filename = [sprintf('%03d',ii) '.jpg'];
   fullname = fullfile(workDir,'images',filename);
   imwrite(img,fullname)    % Write out to a JPEG file (img1.jpg, img2.jpg, etc.)
   ii = ii+1;
end

imageNames = dir(fullfile(workDir,'images','*.jpg'));
imageNames = {imageNames.name}';

outputVideo = VideoWriter(fullfile(workDir,'shuttle_out'));
outputVideo.FrameRate = shuttleVideo.FrameRate;
open(outputVideo)

for ii = 1:length(imageNames)
   img = imread(fullfile(workDir,'images',imageNames{ii}));
   writeVideo(outputVideo,img)
end

close(outputVideo);