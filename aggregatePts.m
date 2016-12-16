function [ alldist, standard ] = aggregatePts(  )
%DISPLAYFACE Summary of this function goes here
%   Detailed explanation goes here
indir='.';
load('tris.mat');
pts = dir([indir '/pts/', '*.txt']);
%pose = dir([indir '/pose/', '*.txt']);
alldist=[];
for i=1:size(pts,1)
    points = load([indir '/pts/',pts(i).name]);


%Creates a matrix of vertices that make triangles and visualizes
tri = triangulation(triangles.ConnectivityList, points(:,1),points(:,2));
triplot(tri);
triEd = tri.edges; %Gets all unique edges in triangulation
triP = tri.Points; %Needed to get vertex coords
distances = zeros(1, size(triEd, 1));

%Loop through edges matrix
%Find get the two indexes for the points matrix
%Compare their x and y value to compute distance
%Add to distances matrix
dPoints = [triP(1); triP(17)];
dDistance = pdist(dPoints, 'euclidean');
for j = 1:size(triEd, 1)
    index1 = triEd(j, 1);
    index2 = triEd(j, 2);
    points = [triP(index1); triP(index2)];
    dist = pdist(points, 'euclidean');
    distances(1, j) = dist / dDistance;
end
%TODO: Divide the distance by a normalization factor on the face. (Gotta
%figure out how to dynamically determine this)
output_args = distances; %Outputs distances between connected vertices
if i==5
   standard = distances; 
end
alldist=[alldist;distances];
end

%cleandist = (alldist - mean(alldist))*(std(input1)/std(alldist))
%input2 must also be zero mean
end
