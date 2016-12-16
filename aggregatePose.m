function [a ] = aggregatePose(  )
%DISPLAYFACE Summary of this function goes here
%   Detailed explanation goes here
indir='.';
pose = dir([indir '/pose/', '*.pose']);
%pose = dir([indir '/pose/', '*.txt']);
a=[];
for i=1:size(pose,1)
    text = fileread([indir '/pose/',pose(i).name]);
    c = strsplit(text, {' ', '\n'});
    %head rot is 216,217,218
    a = [a; str2double(c{1,216}) str2double(c{1,217}) str2double(c{1,218}) str2double(c{1,228}) str2double(c{1,229}) str2double(c{1,230}) str2double(c{1,231}) str2double(c{1,232}) str2double(c{1,233})];
    
    
    %eye 228,229,230, 231,232,233
    %disp(c{1,233});

end
end
