
%%  学习目标：  matlab建立符号表达式

clear all;
a=sym('a');
b=sym('b');
c=sym('c');
x=sym('x');
f1=a*x^3+b*x+c
g=f1^3+6*f1+9
f2=sym('a*x^3+b*x+c')
%%  第二种方法
clear all;
syms a b c x;
f1=a*x^3+b*x+c
g=f1^3+6*f1+9
%% 大仙QQ：1960009019
%% 微信公众号 ： 大仙一品堂