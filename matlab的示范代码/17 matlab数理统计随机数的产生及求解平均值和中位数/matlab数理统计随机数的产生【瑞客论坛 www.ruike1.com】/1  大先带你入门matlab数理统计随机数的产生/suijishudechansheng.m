
%% 学习目标： matlab随机数的产生
%% 二项分布随机数的产生
clear all;
r=binornd(6,0.8)
R=binornd(6,0.8,4,5)   %产生一个4*5的矩阵
%%   大仙QQ：1960009019
%%   在线教育微信公众号：大仙一品堂
%%   大鱼号：在线教育大仙一品堂
%%   一点资讯号：大仙一品堂
%% 　　泊松分布
clear all;
r=poissrnd(6)       %泊松分布
R=poissrnd(6,3,3)     %产生一个3*3的矩阵
%%  
% 指数分布

clear all;
r=exprnd(5)        %指数分布
R=exprnd(5,5,5)     %产生一个5*5的矩阵
%%  

% 均匀分布    连续型  

clear all;
r=unifrnd(1,5)              %均匀分布   1到5之间
R1=unifrnd(1,5,3,3)         %产生一个3*3的矩阵
R2=unifrnd(1,5,[3 3])
%%  
% 离散型均匀分布

clear all;
r=unidrnd(6)           %离散型均匀分布
R1=unidrnd(6,3,3)       %产生一个3*3的矩阵
R2=unidrnd(6,[3 3])
%%  正态分布  应用最广  非常重要
clear all;
r=normrnd(0,1)
R1=normrnd(0,1,[3 4])   %产生一个3*4的矩阵   均值为0   标准差为1
R2=normrnd(2,4,[3 4])    

