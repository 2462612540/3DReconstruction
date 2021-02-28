%%  学习目标：排序，最值，标准差，方差
%%  排序

clear all;
X=[1 3 4;8 3 5;2 7 4]
y1=sort(X)                  %按列由小到大排序
y2=sort(X,2)                %按行由小到大排序
y3=sort(X,1,'descend')      %按列由大到小排序
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂
%%  
% 按行排序

clear all;
X=[1 3 8;8 8 5;82 7 4]
y1=sortrows(X)              %按行排序
y2=sort(X,2)                %按指定的列排序
%%  
%%  求最大值和最小值的差

clear all;
X1=[1 3 4 10 3 5]
y1=range(X1)                 %向量
X2=[1 3 5;2 4 6;8 4 3]
y2=range(X2)                 %矩阵
y3=range(X2,2)
%%  
%%  求最大值和最小值

clear all;
X1=[2 5 4 12 3 15]
y1=minmax(X1)                 %向量
X2=[1 3 5;2 4 6;8 4 3]
y2=minmax(X2)                 %矩阵
%%  
%%  方差

clear all;
A=rand(1,8)         %向量
y=var(A)
B=rand(3,5)         %矩阵
Y1=var(B)


%%  标准差
clear all;
A=[7 3 7 1;1 7 3 2;7 1 7 3]
y1=std(A)
y2=std(A,0)
y3=std(A,1)
y4=std(A,1,2)
%%  
