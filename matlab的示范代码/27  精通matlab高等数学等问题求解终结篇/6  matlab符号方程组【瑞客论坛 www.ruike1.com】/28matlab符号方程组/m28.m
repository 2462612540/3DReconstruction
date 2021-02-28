%% 大仙QQ：1960009019
%% 微信公众号 ： 大仙一品堂
%%  学习目标：matlab符号方程组
%%  符号代数方程组
clear all;
syms x y;
e1=sym('y*sin(x)=8')   
g1=solve(e1)       %默认是x为自变量
g2=solve(e1,'y')
g3=solve('y*sin(x)=8')
g4=solve('y*sin(x)=8','y')
%%  

clear all;
syms x y a b;
e1=sym('a*x+b*y-6=0')
e2=sym('b*x+a*y-4=0')
g1=solve(e1,e2)
g1.x
g1.y
g2=solve(e1,e2,'a','b')    %  a b  为自变量
g2.a
g2.b
%% 

clear all;
syms x y;
e1=sym('5*cos(x+y)+x^2+y^2=6')
e2=sym('5*x+y-4=0')
[x,y]=solve(e1,e2)