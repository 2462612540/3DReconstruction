
%% 学习目标：matlab符号方阵的特征值分解

clear all;
syms x;

A1=sym([2 2 2;3 3 3;4 4 4])
E1=eig(A1)         %特征值
[V1,D1]=eig(A1)    %特征向量  特征值矩阵
%% 大仙QQ：1960009019
%% 微信公众号 ： 大仙一品堂