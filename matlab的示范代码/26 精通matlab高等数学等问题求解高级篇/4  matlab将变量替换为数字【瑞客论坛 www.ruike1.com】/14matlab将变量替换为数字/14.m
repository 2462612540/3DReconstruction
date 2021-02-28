
%%  学习目标：matlab将变量替换为数字

clear all;
syms x y;
f=x^2+9*x+9*x*y+9*y+9*y^2;
g1=subs(f,x,2)
g2=subs(f,y,2)


%% 大仙QQ：1960009019
%% 微信公众号：大仙一品堂

