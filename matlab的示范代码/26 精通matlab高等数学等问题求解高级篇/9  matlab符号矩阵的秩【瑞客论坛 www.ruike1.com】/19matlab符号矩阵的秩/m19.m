
%%  ѧϰĿ�꣺matlab���ž������

clear all;
syms x y;
f1=sym('[1,x^2,3;exp(x),x+y,y;3+x,sin(x),cos(y)]')
f2=sym('[1,x^2,3;exp(x),x+y,y]')
g1=rank(f1)
g2=rank(f2)
%% ����QQ��1960009019
%% ΢�Ź��ں� �� ����һƷ��