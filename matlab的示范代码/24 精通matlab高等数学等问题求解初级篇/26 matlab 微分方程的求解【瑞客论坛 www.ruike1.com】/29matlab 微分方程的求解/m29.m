%% ����QQ��1960009019
%% ΢�Ź��ں� �� ����һƷ��
%% ѧϰĿ�꣺matlab ΢�ַ��̵����

clear all;
dsolve('Dx=-a*x')
dsolve('Dx=-a*x','x(0)=1')    %��ʼ����
%% ����

clear all;
g1=dsolve('D2y=-a^2*y')
g2=dsolve('D2y=-a^2*y','y(0)=1')
g3=dsolve('D2y=-a^2*y','y(0)=1','y(pi)=1')
%%  ΢�ַ�����   

clear all;  
[x1,y1]=dsolve('Dx=y','Dy=-x','t')     %�Ա���Ϊt
[x2,y2]=dsolve('Dx=y','Dy=-x','x(0)=3','y(0)=4','t')