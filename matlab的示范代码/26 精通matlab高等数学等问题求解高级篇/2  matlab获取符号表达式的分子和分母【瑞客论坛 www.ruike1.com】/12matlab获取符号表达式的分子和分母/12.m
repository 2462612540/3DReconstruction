
%%  学习目标：matlab获取符号表达式的分子和分母

clear all;
syms x y;
f=(x/y+8*y/x);
[n2,d2]=numden(f)
%% 大仙QQ：1960009019
%% 微信公众号：大仙一品堂