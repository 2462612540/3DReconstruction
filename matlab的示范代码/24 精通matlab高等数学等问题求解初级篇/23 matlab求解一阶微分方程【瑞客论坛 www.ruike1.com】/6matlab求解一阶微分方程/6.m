
%%  学习目标：matlab求解一阶微分方程

clear all;
syms a y;
y=dsolve('Dy=a*y')
y=dsolve('Dy=a*y','y(0)=2')
%% 大仙QQ：1960009019
%% 微信公众号：  大仙一品堂