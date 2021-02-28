
%%  学习目标：matlab符号方阵的逆矩阵和行列式

clear all;
syms x;
A1=sym(magic(4))
Y1=inv(A1)       %逆矩阵
det(A1)          %行列式

A2=sym([4-x,x,x-4;x,x-4,x+4;x,x,4])
Y2=inv(A2)
det(A2)
%% 大仙QQ：1960009019
%% 微信公众号 ： 大仙一品堂