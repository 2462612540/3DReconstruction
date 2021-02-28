
%%  学习目标：matlab符号表达式的展开

clear all;
syms x y;
f1=(x-y)^3+(x+y)^2      %多项式展开
g1=expand(f1)   
f2=sin(x-8*y)           %三角函数展开        
g2=expand(f2)
f3=exp(3*x^3+3*y)       %指数函数展开
g3=expand(f3)
%% 大仙QQ：1960009019
%% 微信公众号：大仙一品堂