function demo()
%GENERATECOEFF Summary of this function goes here
%   Detailed explanation goes here
%Running input through the functions to find coefficients

load('nets.mat'); %load the three networks
[alldist, standard] = aggregatePts(); %bring in 68 keypoints of theface
pose = aggregatePose();

%normalize alldist
sqall = alldist - repmat((standard),size(alldist,1),1);
sqall = sqall.^2;
stdall = sqrt(sum(sqall)/size(alldist,1));

cleandist = (alldist - repmat((standard),size(alldist,1),1));
inputMatrix = cleandist/mean(stdall);


maxparam = 2;
alpha = 0.5;

i = 0;
%Running input through the functions to find coefficients
head1avg=zeros(15,1);
head2avg=zeros(15,1);
head3avg=zeros(15,1);
head1=median(head1avg);
head2=median(head2avg);
head3=median(head3avg);

c1avg= zeros(15,1);
c2avg=zeros(15,1);
c3avg=zeros(15,1);
c4avg=zeros(15,1);
c5avg=zeros(15,1);
c6avg=zeros(15,1);
c7avg=zeros(15,1);
c8avg=zeros(15,1);
c9avg=zeros(15,1);
c10avg=zeros(15,1);
c11avg=zeros(15,1);
c12avg=zeros(15,1);
c13avg=zeros(15,1);
c14avg=zeros(15,1);
c27avg=zeros(15,1);
c28avg=zeros(15,1);
c29avg=zeros(15,1);
c30avg=zeros(15,1);
c26avg = zeros(15,1);
c36avg = zeros(15,1);

c15avg = zeros(15,1);
c16avg = zeros(15,1);
c23avg = zeros(15,1);
c31avg = zeros(15,1);
c32avg = zeros(15,1);
c33avg = zeros(15,1);
c44avg = zeros(15,1);
c45avg = zeros(15,1);
c37avg = zeros(15,1);
c40avg = zeros(15,1);
c41avg = zeros(15,1);
c42avg = zeros(15,1);
c43avg = zeros(15,1);


c1 = median(c1avg);
c2 = median(c2avg);
c3 = median(c3avg);
c4 = median(c4avg);
c5 = median(c5avg);
c6 = median(c6avg);
c7 = median(c7avg);
c8 = median(c8avg);
c9 = median(c9avg);
c10 = median(c10avg);
c11 = median(c11avg);
c12 = median(c12avg);
c13 = median(c13avg);
c14 = median(c14avg);
c15 = median(c15avg);
c16 = median(c16avg);
c23 = median(c23avg);
c26 = median(c26avg);
c27 = median(c27avg);
c28 = median(c28avg);
c29 = median(c29avg);
c30 = median(c30avg);
c31 = median(c31avg);
c32 = median(c32avg);
c33 = median(c33avg);
 c36 = median(c36avg);
 c37 = median(c37avg);
 c40 = median(c40avg);
 c41 = median(c41avg);
 c42 = median(c42avg);
 c43 = median(c43avg);

for k=1:length(inputMatrix)-1
%eyes = v3eyes([inputMatrix(k,1) inputMatrix(k,6)*1.1]);
testval = inputMatrix(k,:)';

c1avg(end+1) = (net{1}(testval)+net2{1}(testval)+net3{1}(testval))/3; c1avg = c1avg(2:end);
c2avg(end+1) = (net{2}(testval)+net2{2}(testval)+net3{2}(testval))/3; c2avg = c2avg(2:end);
c3avg(end+1) = (net{3}(testval)+net2{3}(testval)+net3{3}(testval))/3; c3avg = c3avg(2:end);
c4avg(end+1) = (net{4}(testval)+net2{4}(testval)+net3{4}(testval))/3; c4avg = c4avg(2:end);
c5avg(end+1) = (net{5}(testval)+net2{5}(testval)+net3{5}(testval))/3; c5avg = c5avg(2:end);
c6avg(end+1) = (net{6}(testval)+net2{6}(testval)+net3{6}(testval))/3; c6avg = c6avg(2:end);
c7avg(end+1) = (net{7}(testval)+net2{7}(testval)+net3{7}(testval))/3; c7avg = c7avg(2:end);
c8avg(end+1) = (net{8}(testval)+net2{8}(testval)+net3{8}(testval))/3; c8avg = c8avg(2:end);
c9avg(end+1) = (net{9}(testval)+net2{9}(testval)+net3{9}(testval))/3; c9avg = c9avg(2:end);
c10avg(end+1) = (net{10}(testval)+net2{10}(testval)+net3{10}(testval))/3; c10avg = c10avg(2:end);
c11avg(end+1) = (net{11}(testval)+net2{11}(testval)+net3{11}(testval))/3; c11avg = c11avg(2:end);
c12avg(end+1) = (net{12}(testval)+net2{12}(testval)+net3{12}(testval))/3; c12avg = c12avg(2:end);
c13avg(end+1) = (net{13}(testval)+net2{13}(testval)+net3{13}(testval))/3; c13avg = c13avg(2:end);
c14avg(end+1) = (net{14}(testval)+net2{14}(testval)+net3{14}(testval))/3; c14avg = c14avg(2:end);
c15avg(end+1) = (net{15}(testval)+net2{15}(testval)+net3{15}(testval))/3; c15avg = c15avg(2:end);
c16avg(end+1) = (net{16}(testval)+net2{16}(testval)+net3{16}(testval))/3; c16avg = c16avg(2:end);
c23avg(end+1) = (net{17}(testval)+net2{17}(testval)+net3{17}(testval))/3; c23avg = c23avg(2:end);
c26avg(end+1) = (net{18}(testval)+net2{18}(testval)+net3{18}(testval))/3; c26avg = c26avg(2:end);
c27avg(end+1) = (net{19}(testval)+net2{19}(testval)+net3{19}(testval))/3; c27avg = c27avg(2:end);
c28avg(end+1) = (net{20}(testval)+net2{20}(testval)+net3{20}(testval))/3; c28avg = c28avg(2:end);
c29avg(end+1) = (net{21}(testval)+net2{21}(testval)+net3{21}(testval))/3; c29avg = c29avg(2:end);
c30avg(end+1) = (net{22}(testval)+net2{22}(testval)+net3{22}(testval))/3; c30avg = c30avg(2:end);
c31avg(end+1) = (net{23}(testval)+net2{23}(testval)+net3{23}(testval))/3; c31avg = c31avg(2:end);
c32avg(end+1) = (net{24}(testval)+net2{24}(testval)+net3{24}(testval))/3; c32avg = c32avg(2:end);
c33avg(end+1) = (net{25}(testval)+net2{25}(testval)+net3{25}(testval))/3; c33avg = c33avg(2:end);
c36avg(end+1) = (net{26}(testval)+net2{26}(testval)+net3{26}(testval))/3; c36avg = c36avg(2:end);
c37avg(end+1) = (net{27}(testval)+net2{27}(testval)+net3{27}(testval))/3; c37avg = c37avg(2:end);
c40avg(end+1) = (net{28}(testval)+net2{28}(testval)+net3{28}(testval))/3; c40avg = c40avg(2:end);
c41avg(end+1) = (net{29}(testval)+net2{29}(testval)+net3{29}(testval))/3; c41avg = c41avg(2:end);
c42avg(end+1) = (net{30}(testval)+net2{30}(testval)+net3{30}(testval))/3; c42avg = c42avg(2:end);
c43avg(end+1) = (net{31}(testval)+net2{31}(testval)+net3{31}(testval))/3; c43avg = c43avg(2:end);


dc1 = abs(median(c1avg)-c1)>maxparam;
dc2 = abs(median(c2avg)-c2)>maxparam;
dc3 = abs(median(c3avg)-c3)>maxparam;
dc4 = abs(median(c4avg)-c4)>maxparam;
dc5 = abs(median(c5avg)-c5)>maxparam;
dc6 = abs(median(c6avg)-c6)>maxparam;
dc7 = abs(median(c7avg)-c7)>maxparam;
dc8 = abs(median(c8avg)-c8)>maxparam;
dc9 = abs(median(c9avg)-c9)>maxparam;
dc10 = abs(median(c10avg)-c10)>maxparam;
dc11 = abs(median(c11avg)-c11)>maxparam;
dc12 = abs(median(c12avg)-c12)>maxparam;
dc13 = abs(median(c13avg)-c13)>maxparam;
dc14 = abs(median(c14avg)-c14)>maxparam;
dc15 = abs(median(c15avg)-c15)>maxparam;
dc16 = abs(median(c16avg)-c16)>maxparam;
dc23 = abs(median(c23avg)-c23)>maxparam;
dc26 = abs(median(c26avg)-c26)>maxparam;
dc27 = abs(median(c27avg)-c27)>maxparam;
dc28 = abs(median(c28avg)-c28)>maxparam;
dc29 = abs(median(c29avg)-c29)>maxparam;
dc30 = abs(median(c30avg)-c30)>maxparam;
dc31 = abs(median(c31avg)-c31)>maxparam;
dc32 = abs(median(c32avg)-c32)>maxparam;
dc33 = abs(median(c33avg)-c33)>maxparam;
dc36 = abs(median(c36avg)-c36)>maxparam;
dc37 = abs(median(c37avg)-c37)>maxparam;
dc40 = abs(median(c40avg)-c40)>maxparam;
dc41 = abs(median(c41avg)-c41)>maxparam;
dc42 = abs(median(c42avg)-c42)>maxparam;
dc43 = abs(median(c43avg)-c43)>maxparam;
%Getting proper text file name

c1 = alpha*(dc1*(median(c1avg)-c1) + c1) + (1-alpha)*c1;
c2 = alpha*(dc2*(median(c2avg)-c2) + c2) + (1-alpha)*c2;
c3 = alpha*(dc3*(median(c3avg)-c3) + c3) + (1-alpha)*c3;
c4 = alpha*(dc4*(median(c4avg)-c4) + c4) + (1-alpha)*c4;
c5 = alpha*(dc5*(median(c5avg)-c5) + c5) + (1-alpha)*c5;
c6 = alpha*(dc6*(median(c6avg)-c6) + c6) + (1-alpha)*c6;
c7 = alpha*(dc7*(median(c7avg)-c7) + c7) + (1-alpha)*c7;
c8 = alpha*(dc8*(median(c8avg)-c8) + c8) + (1-alpha)*c8;
c9 = alpha*(dc9*(median(c9avg)-c9) + c9) + (1-alpha)*c9;
c10 = alpha*(dc10*(median(c10avg)-c10) + c10) + (1-alpha)*c10;
c11 = alpha*(dc11*(median(c11avg)-c11) + c11) + (1-alpha)*c11;
c12 = alpha*(dc12*(median(c12avg)-c12) + c12) + (1-alpha)*c12;
c13 = alpha*(dc13*(median(c13avg)-c13) + c13) + (1-alpha)*c13;
c14 = alpha*(dc14*(median(c14avg)-c14) + c14) + (1-alpha)*c14;
c15 = alpha*(dc15*(median(c15avg)-c15) + c15) + (1-alpha)*c15;
c16 = alpha*(dc16*(median(c16avg)-c16) + c16) + (1-alpha)*c16;
c23 = alpha*(dc23*(median(c23avg)-c23) + c23) + (1-alpha)*c23;
c26 = alpha*(dc26*(median(c26avg)-c26) + c26) + (1-alpha)*c26;
c27 = alpha*(dc27*(median(c27avg)-c27) + c27) + (1-alpha)*c27;
c28 = alpha*(dc28*(median(c28avg)-c28) + c28) + (1-alpha)*c28;
c29 = alpha*(dc29*(median(c29avg)-c29) + c29) + (1-alpha)*c29;
c30 = alpha*(dc30*(median(c30avg)-c30) + c30) + (1-alpha)*c30;
c31 = alpha*(dc31*(median(c31avg)-c31) + c31) + (1-alpha)*c31;
c32 = alpha*(dc32*(median(c32avg)-c32) + c32) + (1-alpha)*c32;
c33 = alpha*(dc33*(median(c33avg)-c33) + c33) + (1-alpha)*c33;
 c36 = (alpha*(dc36*(median(c36avg)-c36) + c36) + (1-alpha)*c36) - 15;
 c37 = alpha*(dc37*(median(c37avg)-c37) + c37) + (1-alpha)*c37;
 c40 = alpha*(dc40*(median(c40avg)-c40) + c40) + (1-alpha)*c40;
 c41 = alpha*(dc41*(median(c41avg)-c41) + c41) + (1-alpha)*c41;
 c42 = alpha*(dc42*(median(c42avg)-c42) + c42) + (1-alpha)*c42;
 c43 = alpha*(dc43*(median(c43avg)-c43) + c43) + (1-alpha)*c43;

fname = './co/coeff0.txt';
%while exist(fname, 'file') == 2
        i = i + 1;
        fname = strcat(strcat('./co/coeff', sprintf('%04d',i)), '.txt');
%end
fileID = fopen(fname, 'wt');
if fileID == -1
    error('Cant open file %s', fname);
end
fprintf(fileID, '%d\n', c1);
fprintf(fileID, '%d\n', c2);
fprintf(fileID, '%d\n', c3);
fprintf(fileID, '%d\n', c4);
fprintf(fileID, '%d\n', c5);
fprintf(fileID, '%d\n', c6);
fprintf(fileID, '%d\n', c7);
fprintf(fileID, '%d\n', c8);
fprintf(fileID, '%d\n', c9);
fprintf(fileID, '%d\n', c10);
fprintf(fileID, '%d\n', c11);
fprintf(fileID, '%d\n', c12);
fprintf(fileID, '%d\n', c13);
fprintf(fileID, '%d\n', c14);
fprintf(fileID, '%d\n', c15);
fprintf(fileID, '%d\n', c16);
%fprintf(fileID, '0\n');
%fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '%d\n', c23);
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '%d\n', c26);
%fprintf(fileID, '0\n');
fprintf(fileID, '%d\n', c27);
fprintf(fileID, '%d\n', c28);
fprintf(fileID, '%d\n', c29);
fprintf(fileID, '%d\n', c30);
fprintf(fileID, '%d\n', c31);
fprintf(fileID, '%d\n', c32);
fprintf(fileID, '%d\n', c33);
%fprintf(fileID, '%d\n', c34);
%fprintf(fileID, '%d\n', c35);
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '%d\n', c36);
fprintf(fileID, '%d\n', c37);
%fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '%d\n', c40);
fprintf(fileID, '%d\n', c41);
fprintf(fileID, '%d\n', c42);
fprintf(fileID, '%d\n', c43);
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');
fprintf(fileID, '0\n');

head1avg(end+1) = pose(k,1); head1avg = head1avg(2:end);
head2avg(end+1) = pose(k,2); head2avg = head2avg(2:end);
head3avg(end+1) = pose(k,3); head3avg = head3avg(2:end);
head1 = median(head1avg);
head2 = median(head2avg);
head3 = median(head3avg);
fprintf(fileID, '%d\n', head1);
fprintf(fileID, '%d\n', head2);
fprintf(fileID, '%d\n', head3);
fprintf(fileID, '%d\n', pose(k,4));
fprintf(fileID, '%d\n', pose(k,5));
fprintf(fileID, '%d\n', pose(k,6));
fprintf(fileID, '%d\n', pose(k,7));
fprintf(fileID, '%d\n', pose(k,8));
fprintf(fileID, '%d', pose(k,9));
fclose(fileID);
end
end








