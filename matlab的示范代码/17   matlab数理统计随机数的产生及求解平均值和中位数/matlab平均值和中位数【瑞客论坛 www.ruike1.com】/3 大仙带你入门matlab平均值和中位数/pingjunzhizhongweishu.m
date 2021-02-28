%%  学习目标：matlab求平均值和中位数
%%  算术平均值

clear all;
A=[1 2 3 4;4 4 4 4]
m1=mean(A)              %对列元素求算术平均值
m2=mean(A,2)            %对行元素求算术平均值
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂
%%  
%%   忽略非数计算算术平均值

clear all;
A=[1 4 nan 5;6 nan 7 nan]
m1=mean(A)                  %有nan就是nan
m2=nanmean(A)               %对列元素求算术平均值
m3=nanmean(A,2)             %对行元素求算术平均值
%% 
%%  几何平均数

clear all;
A1=[6 2 2 4]
m1=geomean(A1)      %向量的几何平均数
A2=[1 4 5;7 7 8]
m2=geomean(A2)      %列元素的几何平均数
m3=geomean(A2,2)    %行元素的几何平均数
%%  

%%   调和平均数
clear all;
A1=[1 2 3 4]
m1=harmmean(A1)      %向量的调和平均数
A2=[1 2 2;2 2 4]
m2=harmmean(A2)      %列元素的调和平均数
m3=harmmean(A2,2)    %行元素的调和平均数
%%   中位数

clear all;
A1=[1 2 3 4]
m1=median(A1)            %向量的中位数
A2=[1 6 3;2 6 4;4 6 8]
m2=median(A2)            %列元素的中位数
m3=median(A2,2)          %行元素的中位数
%%   nan   中位数

clear all;
A1=[1 2 nan 1 nan 3 4]
m1=nanmedian(A1)               %向量的中位数
A2=[1 2 nan;2 nan 4;4 1 8]
m2=median(A2)
m3=nanmedian(A2)               %列元素忽略NaN的中位数
m4=nanmedian(A2,2)             %行元素忽略NaN的中位数
