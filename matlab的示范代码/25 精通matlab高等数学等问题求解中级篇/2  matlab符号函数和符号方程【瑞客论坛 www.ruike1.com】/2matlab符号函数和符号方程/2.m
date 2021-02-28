%%  学习目标：matlab符号函数和符号方程
%%  符号函数

clear all;
syms x y;
f1=9*(x-9)^3+sin(x+y)+6^x
f2=f1/(9*x)
f3=sym(f1/(9*x))
%%  符号方程

clear all;
syms x y;
e1=sym('6*(x-6)^6+6^y=0')
e2=sym('6*x^2+6*x+2=0')
%% 大仙QQ：1960009019
%% 微信公众号：大仙一品堂