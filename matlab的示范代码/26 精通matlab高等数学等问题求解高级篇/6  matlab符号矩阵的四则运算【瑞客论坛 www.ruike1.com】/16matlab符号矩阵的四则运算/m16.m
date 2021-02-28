
%%  学习目标：matlab符号矩阵的四则运算

clear all;
syms x;
A1=sym('[1/6 2/6 6;6 6/7 6;6.4 6 6]')
B1=sym(magic(3))
C1=A1+B1
C2=A1-B1
C3=A1+8
D1=A1*B1
D2=A1*6

%%  左除和右除
clear all;
syms x;
A=sym('[5 5 5;3 6 3;7 7 7]')
B=sym(magic(3))
C1=A\B                         %左除
D1=B/A                         %右除

%% 大仙QQ：1960009019
%% 微信公众号 ： 大仙一品堂