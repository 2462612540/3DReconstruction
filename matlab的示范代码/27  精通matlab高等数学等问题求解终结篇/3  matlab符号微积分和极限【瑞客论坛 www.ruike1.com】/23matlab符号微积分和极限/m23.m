%% 大仙QQ：1960009019
%% 微信公众号 ： 大仙一品堂


%% 学习目标：matlab符号微积分和极限
%%  微分
clear all;
syms x y;
f=5*x^4+y*sin(x)+x*cos(y)+6
g1=diff(f)
g2=diff(f,3)    %求3阶导数
g3=diff(f,x,3)
g4=diff(f,y,3)
%% 极限

clear all;
syms x h;
y1=limit((cos(x+h)-cos(x))/h,h,0)   %相当于求导cos  x
y2=limit(((x+h)^3-x^3)/h,h,0)

%%  
%%  不定积分

clear all;
syms x y;
f1=cos(x)+cos(y)
g1=int(f1)
g2=int(f1,x)
g3=int(f1,y)
%%  定积分

clear all;
syms x;
f1=1/x^2+sin(x)
g1=int(f1,1,3)
g2=int(f1,x,1,3)
f2=3/x^2;
g3=int(f2,x,1,+inf)
%%  
