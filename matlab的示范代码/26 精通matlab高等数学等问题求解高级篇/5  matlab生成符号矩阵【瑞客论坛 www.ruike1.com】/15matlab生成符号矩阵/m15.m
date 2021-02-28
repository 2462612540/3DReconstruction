
%% 学习目标：matlab生成符号矩阵

clear all;
syms x;
A1=sym('[6.5 x sin(x);cos(6)*3/5 8*x exp(x)]')
size(A1)

A2=sym('[3/7,2/8,3/9;5/3,2/9,2/4;1/3,1/5,1/7]')
size(A2)
%% 大仙QQ：1960009019
%% 微信公众号 ： 大仙一品堂
