%% ����QQ��1960009019
%% ΢�Ź��ں� �� ����һƷ��
%%  ѧϰĿ�꣺matlab���ŷ�����
%%  ���Ŵ���������
clear all;
syms x y;
e1=sym('y*sin(x)=8')   
g1=solve(e1)       %Ĭ����xΪ�Ա���
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
g2=solve(e1,e2,'a','b')    %  a b  Ϊ�Ա���
g2.a
g2.b
%% 

clear all;
syms x y;
e1=sym('5*cos(x+y)+x^2+y^2=6')
e2=sym('5*x+y-4=0')
[x,y]=solve(e1,e2)