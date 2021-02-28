
%%  学习目标：matlab计算不定积分和定积分
%%  不定积分

clear all;
syms x;
y=int(exp(sin(x))*cos(x),'x')

%%  求定积分

clear all;
syms x;
y=int('cos(x)',x,0,pi)     %积分区间是0到pi
%% 大仙QQ：1960009019
%% 微信公众号：大仙一品堂