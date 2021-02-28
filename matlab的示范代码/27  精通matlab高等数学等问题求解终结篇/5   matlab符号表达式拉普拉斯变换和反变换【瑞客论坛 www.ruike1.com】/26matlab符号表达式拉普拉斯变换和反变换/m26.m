%% 大仙QQ：1960009019
%% 微信公众号 ： 大仙一品堂
%% 学习目标：matlab符号表达式拉普拉斯变换和反变换

clear all;
syms s t w x a;
f1=laplace(x^3)

%% 反

clear all;
syms s t a w x y;
f1=ilaplace(1/(s-1))
