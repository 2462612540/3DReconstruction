
%% 学习目标：matlab符号表达式同类项合并

clear all;
syms x y;
y1=collect(x^2*y+y*x+9*y^2*x^3-6*x^2-4*x)

%% 大仙QQ：1960009019
%% 微信公众号：大仙一品堂